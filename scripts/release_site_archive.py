#!/usr/bin/env python3
"""Archive the rendered Quarto site into a Zenodo-friendly ZIP that can be
committed before creating a GitHub release."""

import argparse
import re
import shutil
import subprocess
import sys
from datetime import UTC, datetime
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[1]
SITE_DIR = REPO_ROOT / "_site"
ARCHIVE_DIR = REPO_ROOT / "release-artifacts"


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--tag",
        help=(
            "Release tag used in the archive filename, for example v1.0.0. "
            "Defaults to the current UTC timestamp."
        ),
    )
    parser.add_argument(
        "--stage",
        action="store_true",
        help="Stage the archive directory with git add -A after creating the ZIP.",
    )
    args = parser.parse_args()

    if not SITE_DIR.is_dir():
        sys.exit(
            f"Rendered site directory not found at {SITE_DIR}. "
            "Run `npm run site:build` first."
        )

    tag = args.tag or datetime.now(UTC).strftime("%Y%m%dT%H%M%SZ")
    safe_tag = re.sub(r"[^A-Za-z0-9._-]+", "-", tag).strip("-._")
    if not safe_tag:
        sys.exit("The provided --tag does not produce a valid archive name.")

    ARCHIVE_DIR.mkdir(exist_ok=True)
    for old_archive in ARCHIVE_DIR.glob("site-*.zip"):
        old_archive.unlink()
    archive_path = shutil.make_archive(
        str(ARCHIVE_DIR / f"site-{safe_tag}"), "zip", SITE_DIR
    )

    if args.stage:
        subprocess.run(
            ["git", "add", "-A", str(ARCHIVE_DIR)], cwd=REPO_ROOT, check=True
        )
        print(f"Staged {ARCHIVE_DIR}")

    print(f"Created {archive_path}")


if __name__ == "__main__":
    main()
