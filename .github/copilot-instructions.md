# Copilot Instructions for This Repository

This repository is a GitHub template for FAIR and open research data projects. When GitHub Copilot or another coding agent works here, it should optimize for the smallest safe change that keeps the template reusable.

## 1. Determine the context first

- **Template maintenance**: preserve placeholders such as `USERNAME`, `REPO_NAME`, `FULLNAME`, `SHORT_DESCRIPTION`, `ZENODO_RECORD`, `GITHUB_REPO_ID`, `DOI`, and `[INSERT CONTACT METHOD]` in template files.
- **Project instance**: replace those placeholders in the files listed in [TODO.md](../TODO.md), then rename `README.template.md` to `README.md` when the project is finalized.

## 2. Prefer preview over production

- Run `quarto preview` or `uv run quarto preview` while iterating on docs.
- Do **not** run `quarto render` or `quarto publish gh-pages` during an agent session unless a maintainer explicitly asks for production publishing.

## 3. Follow the setup checklist

- Use [TODO.md](../TODO.md) as the source of truth.
- Work through items marked 🤖 directly.
- Prepare, but do not complete on your own, items marked 🤝 or 👤 unless the maintainer explicitly authorizes the external action.

## 4. Use the existing validation tools

- `npm run format` and `npm run check`
- `uv run ruff format` and `uv run ruff check`
- `uv run ty check`
- `styler::style_dir(".")` and `lintr::lint_dir(".")`
- `npm run changelog`

## 5. Manage the changelog from history

- Fetch the full history first when needed: `git fetch --tags --unshallow origin`
- Use `npm run commit` so each logical change becomes a Conventional Commit that `git-cliff` can summarize cleanly
- Use `npm run changelog:unreleased` while iterating to keep agent context small
- Draft the full release notes with `npm run changelog`
- Curate the generated entries into [CHANGELOG.md](../CHANGELOG.md), keeping `Unreleased` at the top

## 6. Keep docs and governance files consistent

- Update related files together when changing setup or release guidance: `README.md`, `TODO.md`, `CHANGELOG.md`, `CONTRIBUTING.md`, `SECURITY.md`, and documentation in `documentation/`
- Link new guidance back to this file when it helps humans and agents find the right workflow quickly
