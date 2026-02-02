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
  - Avoid: `quarto render`, `quarto publish gh-pages`.
- Keep the preview server running while editing.

## 2) Placeholder Policy (Template vs Project)

This template includes placeholders like: `USERNAME`, `REPO_NAME`, `FULLNAME`, `SHORT_DESCRIPTION`, `ZENODO_RECORD`, `[INSERT CONTACT METHOD]`, `GITHUB_REPO_ID`, `DOI`.

- **Template maintenance**:
  - Keep placeholders intact across all files so downstream users can replace them.
  - Update example values only in explanatory comments or docs.

- **Project instances**:
  - **Replace placeholders** in:
    - `.github/ISSUE_TEMPLATE/config.yml`
    - `_brand.yml`
    - `CODE_OF_CONDUCT.md`
    - `DESCRIPTION`
    - `package.json`
    - `pyproject.toml`
    - `README.template.md` → after replacement, **rename to `README.md`** when finalized
    - `SECURITY.md`
  - Leave any non-project template placeholders untouched only if the file explicitly documents template behavior for reuse.

## 3) Formatting and Linting (Both)

- Run **`npm run format`** before commits to enforce Prettier.
- Use **`npm run check`** to verify formatting without writing changes.
- For Python code, use **`uv run ruff check`** to lint and **`uv run ruff format`** to format.
- For Python type checking, use **`uv run ty check`**.
- For R code, use **`styler::style_dir(".")`** to format and **`lintr::lint_dir(".")`** to lint.

## 4) Commits and Changelog (Both)

- Use **`npm run commit`** to follow Conventional Commits.
- After committing, generate entries with **`npm run changelog`** and update `CHANGELOG.md`.

## 5) Repository Structure (Both)

Aligned with _The Turing Way_ advanced structure:

- `analysis/` — notebooks and analysis scripts
- `assets/` — images and media
- `build/` — data build/processing scripts
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
- Run and validate scripts in `src/`, `build/`, and `analysis/`
- Confirm `.github/workflows/` still pass for changes

## 9) GitHub Features and Security (Project instances)

- **Enable GitHub Security Alerts** and Dependabot updates (Repository → Security).
- **Protect `main`**: require PR reviews and disallow force pushes.
- Keep `SECURITY.md` and GitHub security features active.
- Use provided **issue templates**; modify only to improve the template.

## 10) Zenodo Integration and DOI (Project instances)

- **Enable Zenodo–GitHub integration** to archive releases and mint DOIs.
- After first release:
  - Record your **`ZENODO_RECORD`** and **`DOI`**.
  - **Zenodo DOI badge**: replace `GITHUB_REPO_ID` with the numeric repo ID from `https://api.github.com/repos/USERNAME/REPO_NAME` (`id` field). Badge will display your DOI after Zenodo links the release.
- Add the DOI to the README once available.

## 11) Website Publishing with GitHub Pages (Project instances)

- In repo **Settings → Pages**:
  - Source: **Deploy from a branch**
  - Branch: **`gh-pages`**, folder: **`/ (root)`**
- **Production commands** (run _outside_ agent sessions unless explicitly authorized):
  - `quarto render`
  - `quarto publish gh-pages`

## 12) Brand and UX Polish (Project instances)

- Generate favicons (`favicon.ico`, `favicon-16x16.png`, `favicon-32x32.png`, `apple-touch-icon.png`, Android icons) and place at repo root.
- Replace placeholder contact details and short description.
- Remove or resolve `TODO` comments: `grep -r "TODO" .` then address or delete.

## 13) Commands Recap (Both)

| Command                   | Purpose                                          |
| ------------------------- | ------------------------------------------------ |
| `quarto preview`          | Live preview with reload                         |
| `uv run quarto preview`   | Preview in the pinned Python env                 |
| `npm run check`           | Verify formatting                                |
| `npm run format`          | Apply Prettier formatting                        |
| `uv run ruff check`       | Lint Python code                                 |
| `uv run ruff format`      | Format Python code                               |
| `uv run ty check`         | Type check Python code                           |
| `styler::style_dir(".")`  | Format R code                                    |
| `lintr::lint_dir(".")`    | Lint R code                                      |
| `npm run commit`          | Conventional Commits wizard                      |
| `npm run changelog`       | Generate changelog from commits                  |
| `npm run prepare`         | Setup Prek git hooks                             |
| `uv sync`                 | Sync Python dependencies                         |
| `renv::restore()`         | Restore R environment                            |
| `quarto render`           | **Production render** (avoid in agent sessions)  |
| `quarto publish gh-pages` | **Production publish** (avoid in agent sessions) |

## 14) Finalization Workflow Checklist (Project instances)

Follow `TODO.md`, then:

1. Replace placeholders across listed files.
2. Customize `.qmd` docs and verify with `quarto preview`.
3. Format files: `npm run format`, `uv run ruff format`, and `styler::style_dir(".")` in R.
4. Lint Python code: `uv run ruff check`.
5. Type check Python code: `uv run ty check` (if applicable).
6. Lint R code: `lintr::lint_dir(".")` in R.
7. Commit via `npm run commit`.
8. Generate `CHANGELOG.md` with `npm run changelog`.
9. When ready, delete the template `README.md` and rename `README.template.md` → `README.md`.
10. Enable Pages and publish with `quarto publish gh-pages`.
11. After first release, update `ZENODO_RECORD`, `DOI`, and DOI badge.
12. Verify security alerts and branch protection.

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
