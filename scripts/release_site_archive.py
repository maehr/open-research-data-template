#!/usr/bin/env python3

from __future__ import annotations

import argparse
import re
import subprocess
import sys
from datetime import UTC, datetime
from pathlib import Path
from zipfile import ZIP_DEFLATED, ZipFile

REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_SITE_DIR = REPO_ROOT / "_site"
DEFAULT_ARCHIVE_DIR = REPO_ROOT / "release-artifacts"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description=(
            "Archive the rendered Quarto site into a Zenodo-friendly ZIP that can "
            "be committed before creating a GitHub release."
        )
    )
    parser.add_argument(
        "--tag",
        help=(
            "Release tag used in the archive filename, for example v1.0.0. "
            "Defaults to the current UTC timestamp."
        ),
    )
    parser.add_argument(
        "--site-dir",
        default=str(DEFAULT_SITE_DIR),
        help="Rendered site directory to archive. Defaults to _site.",
    )
    parser.add_argument(
        "--archive-dir",
        default=str(DEFAULT_ARCHIVE_DIR),
        help="Directory where the ZIP archive should be written.",
    )
    parser.add_argument(
        "--stage",
        action="store_true",
        help="Stage the archive directory with git add -A after creating the ZIP.",
    )
    return parser.parse_args()


def sanitize_tag(tag: str) -> str:
    safe_tag = re.sub(r"[^A-Za-z0-9._-]+", "-", tag).strip("-._")
    if not safe_tag:
        raise SystemExit("The provided --tag does not produce a valid archive name.")
    return safe_tag


def default_tag() -> str:
    return datetime.now(UTC).strftime("%Y%m%dT%H%M%SZ")


def ensure_site_dir(site_dir: Path) -> None:
    if not site_dir.exists() or not site_dir.is_dir():
        raise SystemExit(
            f"Rendered site directory not found at {site_dir}. Run `npm run site:build` first."
        )


def remove_existing_archives(archive_dir: Path, archive_name: str) -> None:
    if not archive_dir.exists():
        return
    for existing in archive_dir.glob("site-*.zip"):
        if existing.name != archive_name:
            existing.unlink()


def build_archive(site_dir: Path, archive_path: Path) -> None:
    archive_path.parent.mkdir(parents=True, exist_ok=True)
    if archive_path.exists():
        archive_path.unlink()

    with ZipFile(archive_path, "w", compression=ZIP_DEFLATED) as zip_file:
        for file_path in sorted(site_dir.rglob("*")):
            if file_path.is_file():
                zip_file.write(file_path, arcname=file_path.relative_to(site_dir))


def stage_archive_dir(archive_dir: Path) -> None:
    subprocess.run(
        ["git", "add", "-A", str(archive_dir)],
        cwd=REPO_ROOT,
        check=True,
    )


def main() -> int:
    args = parse_args()
    site_dir = Path(args.site_dir).expanduser().resolve()
    archive_dir = Path(args.archive_dir).expanduser().resolve()
    safe_tag = sanitize_tag(args.tag or default_tag())
    archive_name = f"site-{safe_tag}.zip"
    archive_path = archive_dir / archive_name

    ensure_site_dir(site_dir)
    remove_existing_archives(archive_dir, archive_name)
    build_archive(site_dir, archive_path)

    if args.stage:
        stage_archive_dir(archive_dir)

    print(f"Created {archive_path}")
    if args.stage:
        print(f"Staged {archive_dir}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
