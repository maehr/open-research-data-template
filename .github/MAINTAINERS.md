# Maintainer Notes

## Scope
- This is a template repo; keep placeholders like `USERNAME` and `REPO_NAME` intact.
- Avoid adding new dependencies unless necessary.

## Routine Maintenance
- Update template guidance and placeholder instructions as needed.
- Format and lint before releases or larger edits:
  - `npm run format` (or `npm run check` to verify)
  - `uv run ruff format` and `uv run ruff check`
  - `uv run ty check` (if applicable)
  - R: `styler::style_dir(".")` and `lintr::lint_dir(".")`

## Releases
- **Manual releases** (GitHub UI or `gh release create`) trigger `.github/workflows/release-site.yml` on `release: published`.
- The workflow renders the site and uploads `site.tar.gz` to the release.
- Do **not** run production Quarto commands (`quarto render` / `quarto publish gh-pages`) outside CI workflows.
