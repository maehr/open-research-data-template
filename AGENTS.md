# AGENTS Guidelines for This Repository

This repository is a **GitHub template** for FAIR and open research data documentation. These guidelines align with `TODO.md` and apply when interacting with the repo using agents (e.g., Copilot, Cursor, other AI tools).

> **Two contexts**
>
> - **Template maintenance**: you are improving this template for reuse.
> - **Project instances**: a user has created a new repo _from_ this template and is customizing it.
>
> Rules below state which context they target. When unspecified, they apply to both.

## 1) Use Preview Mode During Interactive Sessions (Both)

- **Always run `quarto preview` (or `uv run quarto preview`)** while iterating on docs. Live reload for `.qmd`, `.md`, and assets.
- **Do not run production commands inside agent sessions** unless explicitly requested by the human maintainer:
  - Avoid: `quarto render` when it is only meant to prepare production artifacts.
  - Do not replace the GitHub Pages deployment workflow with manual publishing steps.
- Keep the preview server running while editing.

## 2) Placeholder Policy (Template vs Project)

This template includes placeholders like: `USERNAME`, `REPO_NAME`, `FULLNAME`, `SHORT_DESCRIPTION`, `GITHUB_REPO_ID`, `ZENODO_RECORD`, `[INSERT CONTACT METHOD]`, and `DOI`.

- **Template maintenance**:
  - Keep placeholders intact in project-facing template files such as `CITATION.template.cff`, `CODE_OF_CONDUCT.template.md`, `SECURITY.template.md`, and `README.template.md` so downstream users can replace them.
  - Keep the live template-repository files (`CITATION.cff`, `CODE_OF_CONDUCT.md`, `SECURITY.md`, `README.md`, and `CHANGELOG.md`) accurate for this repository.

- **Project instances**:
  - **Replace placeholders** in:
    - `.github/ISSUE_TEMPLATE/config.yml`
    - `_brand.yml`
    - `CITATION.template.cff` → after replacement, **rename to `CITATION.cff`** early so GitHub shows the correct citation metadata
    - `CODE_OF_CONDUCT.template.md` → after replacement, **rename to `CODE_OF_CONDUCT.md`** early so GitHub shows the correct community-health file
    - `DESCRIPTION`
    - `package.json`
    - `pyproject.toml`
    - `README.template.md` → after replacement, **rename to `README.md`** when finalized
    - `SECURITY.template.md` → after replacement, **rename to `SECURITY.md`** early so GitHub shows the correct security policy
  - Leave any non-project template placeholders untouched only if the file explicitly documents template behavior for reuse.

## 3) Formatting and Linting (Both)

- Run **`npm run format`** before commits to enforce Prettier.
- Use **`npm run check`** to verify formatting without writing changes.
- For Python code, use **`uv run ruff check`** to lint and **`uv run ruff format`** to format.
- For Python type checking, use **`uv run ty check`**.
- For R code, use **`styler::style_dir(".")`** to format and **`lintr::lint_dir(".")`** to lint.

## 4) Commits and Changelog (Both)

- Use **`npm run commit`** to follow Conventional Commits.
- Prefer one focused logical change per commit so `git-cliff` can reuse the subject line directly.
- Use **`npm run changelog:unreleased`** for compact agent previews while iterating.
- After committing, generate entries with **`npm run changelog`** and update `CHANGELOG.md` for template maintenance or `CHANGELOG.template.md` for project instances.

## 5) Repository Structure (Both)

Aligned with _The Turing Way_ advanced structure:

- `analysis/` — notebooks and analysis scripts
- `assets/` — images and media
- `data/` — datasets (FAIR-aligned)
- `documentation/` — extended docs beyond README
- `project-management/` — planning and minutes
- `src/` — source code for collection/processing
- `test/` — tests for code and data validation

Place new files accordingly.

## 6) Dependency Management (Both)

### Node.js (npm)

1. `npm install <package>`
2. Commit `package.json` and `package-lock.json`
3. If needed: `npm run prepare` to install Prek git hooks

### Python (uv)

1. Edit `pyproject.toml`
2. `uv sync` to refresh `uv.lock`
3. Commit both files

### R (renv)

1. In R: `install.packages("pkg")`
2. For dev tools (languageserver, lintr, styler): Add to `DESCRIPTION` Suggests field
3. `renv::snapshot()` to update `renv.lock`
   - For explicit dev packages: `renv::snapshot(packages = c("languageserver", "lintr", "styler"))`
4. Commit both `DESCRIPTION` and `renv.lock`

**Note**: The `DESCRIPTION` file documents R development dependencies. The `.Rprofile` configures R options and activates renv.

## 7) Documentation Practices (Both)

- Prefer `.qmd` for executable, reproducible docs; `.md` for static content.
- Include valid YAML front matter.
- Execute and test code chunks. Keep outputs reproducible.

## 8) Testing and CI (Both)

- `npm run check` for formatting
- `uv run ruff check` for Python linting
- `uv run ty check` for Python type checking
- `styler::style_dir(".")` for R formatting
- `lintr::lint_dir(".")` for R linting
- `quarto preview` to detect rendering issues
- Run and validate scripts in `src/` and `analysis/`
- Confirm `.github/workflows/` still pass for changes

## 9) GitHub Features and Security (Project instances)

- **Enable GitHub Security Alerts** and Dependabot updates (Repository → Security).
- **Protect `main`**: require PR reviews and disallow force pushes.
- Keep `SECURITY.md` and GitHub security features active.
- Use provided **issue templates**; modify only to improve the template.

## 10) Zenodo Integration and DOI (Project instances)

- **Enable Zenodo–GitHub integration** to archive releases and mint DOIs.
- Before publishing a release, run `npm run release:prepare -- --tag vX.Y.Z` and commit the generated `release-artifacts/site-vX.Y.Z.zip` so Zenodo captures the rendered HTML archive as part of the tagged repository snapshot.
- The `release.yml` workflow also uploads the same `site-<tag>.zip` archive to the GitHub release page for convenient downloading after publication.
- After first release:
  - Record your **`ZENODO_RECORD`** and **`DOI`**.
  - **Zenodo DOI badge**: replace `GITHUB_REPO_ID` in the badge image URL with the numeric repo ID from `https://api.github.com/repos/USERNAME/REPO_NAME` (`id` field), and replace `ZENODO_RECORD` in the badge target once Zenodo has created the record. The badge will then display your DOI.
  - Use the **concept DOI** directly in citation metadata so it stays stable across releases.
- Add the DOI to the README and `CITATION.cff` once available.

## 11) Website Publishing with GitHub Pages (Project instances)

- In repo **Settings → Pages**:
  - Source: **GitHub Actions**
- **Production deployment** (run _outside_ agent sessions unless explicitly authorized):
  - Merge or push validated changes to `main` so `.github/workflows/quarto-publish.yml` deploys the site automatically.
  - Use the workflow's `workflow_dispatch` trigger only when you need to rerun deployment manually.

## 12) Brand and UX Polish (Project instances)

- Generate favicons (`favicon.ico`, `favicon-16x16.png`, `favicon-32x32.png`, `apple-touch-icon.png`, Android icons) and place at repo root.
- Replace placeholder contact details and short description.
- Remove or resolve `TODO` comments: `grep -r "TODO" .` then address or delete.

## 13) Commands Recap (Both)

| Command or action                         | Purpose                                                |
| ----------------------------------------- | ------------------------------------------------------ |
| `quarto preview`                          | Live preview with reload                               |
| `uv run quarto preview`                   | Preview in the pinned Python env                       |
| `npm run check`                           | Verify formatting                                      |
| `npm run format`                          | Apply Prettier formatting                              |
| `uv run ruff check`                       | Lint Python code                                       |
| `uv run ruff format`                      | Format Python code                                     |
| `uv run ty check`                         | Type check Python code                                 |
| `styler::style_dir(".")`                  | Format R code                                          |
| `lintr::lint_dir(".")`                    | Lint R code                                            |
| `npm run commit`                          | Conventional Commits wizard                            |
| `npm run changelog:unreleased`            | Compact preview of pending changelog entries           |
| `npm run changelog`                       | Generate changelog from commits                        |
| `npm run prepare`                         | Setup Prek git hooks                                   |
| `npm run release:prepare -- --tag vX.Y.Z` | Build, archive, and stage a Zenodo-ready site ZIP      |
| `uv sync`                                 | Sync Python dependencies                               |
| `renv::restore()`                         | Restore R environment                                  |
| `quarto render`                           | **Production render** (avoid in agent sessions)        |
| `Render and Publish` workflow             | Deploy GitHub Pages from `main` or `workflow_dispatch` |

## 14) Finalization Workflow Checklist (Project instances)

Follow `TODO.md`, then:

1. Replace placeholders across listed files.
2. Activate `CITATION.cff`, `CODE_OF_CONDUCT.md`, and `SECURITY.md` from their `.template` counterparts early so GitHub surfaces your project metadata instead of the template repository's.
3. Customize `.qmd` docs and verify with `quarto preview`.
4. Format files: `npm run format`, `uv run ruff format`, and `styler::style_dir(".")` in R.
5. Lint Python code: `uv run ruff check`.
6. Type check Python code: `uv run ty check` (if applicable).
7. Lint R code: `lintr::lint_dir(".")` in R.
8. Commit via `npm run commit`.
9. Preview pending changelog entries with `npm run changelog:unreleased`, then generate `CHANGELOG.template.md` with `npm run changelog`.
10. Before creating a release, run `npm run release:prepare -- --tag vX.Y.Z` and commit the generated `release-artifacts/site-vX.Y.Z.zip`.
11. When ready, delete the template `README.md` and `CHANGELOG.md`, then rename `README.template.md` → `README.md` and `CHANGELOG.template.md` → `CHANGELOG.md`.
12. Enable GitHub Pages to use GitHub Actions, then merge or push validated changes to `main` so the `Render and Publish` workflow deploys the site.
13. After first release, update `ZENODO_RECORD` and `DOI`.
14. Verify security alerts, branch protection, and the Pages deployment.

## 15) Verification Steps (Project instances)

- `npm run check` passes.
- `uv run ruff check` passes without errors.
- `uv run ty check` passes (if applicable).
- `lintr::lint_dir(".")` passes without errors in R.
- `quarto preview` renders without errors.
- GitHub Pages site loads as expected.
- README links work.
- Security alerts and branch protection are active.

**Principle**: Prefer preview over production during agent sessions. Preserve template placeholders unless customizing a project instance. Keep changes reproducible, FAIR-aligned, and verifiable.
