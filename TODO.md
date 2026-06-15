# Project Setup Checklist

Use this checklist after creating a repository from the template. Keep it practical: unfinished setup tasks stay here, stable project explanations move to `README.md`, `index.qmd`, or `documentation/`.

## Owner Labels

| Label      | Meaning                                                                       |
| ---------- | ----------------------------------------------------------------------------- |
| `[Agent]`  | A coding agent can usually do this directly in the repository.                |
| `[Shared]` | An agent can prepare the work, but a maintainer approves the external action. |
| `[Manual]` | Complete this in GitHub, Zenodo, or another external service.                 |

## Before You Start

- [ ] `[Agent]` Read `README.md` for the template overview and this checklist for the setup path.
- [ ] `[Agent]` Install dependencies with `npm install`.
- [ ] `[Agent]` Install Git hooks with `npm run prepare`.
- [ ] `[Agent]` Start the Quarto preview with `npm run preview` and keep it running while editing documentation.

## Phase 1: Make The Project Identifiable

- [ ] `[Agent]` Replace placeholders in `.github/ISSUE_TEMPLATE/config.yml`, `_brand.yml`, `CITATION.template.cff`, `CODE_OF_CONDUCT.template.md`, `DESCRIPTION`, `index.qmd`, `package.json`, `project-management/*.template.md`, `pyproject.toml`, `README.template.md`, and `SECURITY.template.md`.
- [ ] `[Agent]` Update project values for `FULLNAME`, `USERNAME`, `REPO_NAME`, `SHORT_DESCRIPTION`, `[INSERT CONTACT METHOD]`, `GITHUB_REPO_ID`, `ZENODO_RECORD`, `DOI`, and the starting project version where they apply.
- [ ] `[Agent]` Customize citation metadata in `CITATION.template.cff`, including authors, title, repository URL, license, resource type, and DOI if already available.
- [ ] `[Agent]` Activate project citation and governance files by renaming `CITATION.template.cff` to `CITATION.cff`, `CODE_OF_CONDUCT.template.md` to `CODE_OF_CONDUCT.md`, and `SECURITY.template.md` to `SECURITY.md`.
- [ ] `[Agent]` Replace the default favicons at the repository root if the project will publish a site: `favicon.ico`, `favicon-16x16.png`, `favicon-32x32.png`, `apple-touch-icon.png`, and Android icons.
- [ ] `[Agent]` Optionally add `.zenodo.json` for richer Zenodo metadata.

Outcome: badges, metadata, contact details, and citation files describe the project rather than the template.

## Phase 2: Prepare Data For Publication

- [ ] `[Agent]` Verify that all data files in `data/` are in open, non-proprietary formats (e.g., CSV, JSON, TXT). Avoid proprietary formats like XLSX unless strictly necessary.
- [ ] `[Agent]` Ensure all data has been properly anonymized and stripped of personally identifiable information (PII) before committing to the repository.
- [ ] `[Agent]` Check data for errors, inconsistencies, or missing values.
- [ ] `[Agent]` Document the data by filling out `documentation/data-dictionary.template.qmd`. Include title, authors, funding, methodology, file overview, and definitions for all variables.

Outcome: datasets are clean, anonymized, documented, and provided in open formats.

## Phase 3: Put Content In The Right Place

- [ ] `[Agent]` Customize `README.template.md` as the GitHub front door: project summary, data at a glance, repository structure, reuse, citation, support, authors, and license.
- [ ] `[Agent]` Customize `index.qmd` as the public website homepage: plain-language project introduction, target users, data or outputs, reuse guidance, and links to detailed pages.
- [ ] `[Agent]` Customize `documentation/index.qmd` and other pages in `documentation/` for methods, data dictionaries, workflows, user guides, or other details that are too long for the homepage.
- [ ] `[Agent]` Customize any needed `project-management/*.template.md` files, then rename each finished file by removing `.template` so it can be published with the site.
- [ ] `[Agent]` Resolve TODO comments outside this checklist and unfinished `*.template.*` files by searching for `TODO` and completing or removing each project-specific note.

Outcome: readers can understand the project without reading setup notes.

## Phase 4: Configure GitHub And Zenodo

- [ ] `[Shared]` Enable GitHub Security Alerts and Dependabot security updates with the GitHub CLI commands below, or use the GitHub web UI if CLI access is unavailable.
- [ ] `[Shared]` Protect the `main` branch with the GitHub CLI branch protection command below, or configure branch protection in the GitHub web UI.
- [ ] `[Manual]` Enable GitHub Pages in repository settings with **Source: GitHub Actions**.
- [ ] `[Manual]` Enable Zenodo-GitHub integration so releases can be archived and assigned DOIs.
- [ ] `[Agent]` Set up the Zenodo DOI badge by replacing `GITHUB_REPO_ID` in `README.template.md` with the numeric repository ID from `https://api.github.com/repos/USERNAME/REPO_NAME`.
- [ ] `[Shared]` After the first release, record DOI metadata by replacing `DOI` in `CITATION.cff` and `ZENODO_RECORD` in `README.template.md`.

Outcome: the repository can publish, preserve releases, and receive security updates.

## Phase 5: Validate The Project Locally

- [ ] `[Agent]` Format files with `npm run format`.
- [ ] `[Agent]` Check formatting with `npm run check`.
- [ ] `[Agent]` Lint Python code with `uv run ruff check` if Python code is present.
- [ ] `[Agent]` Type-check Python code with `uv run ty check` if Python code is present.
- [ ] `[Agent]` Format and lint R code with `styler::style_dir(".")` and `lintr::lint_dir(".")` if R code is present.
- [ ] `[Agent]` Preview documentation with `npm run preview` and fix rendering issues.
- [ ] `[Agent]` Optionally check links with `npm run lychee-check` if link checking is configured for the project.

Outcome: formatting, website preview, and language-specific checks pass before publication.

## Phase 6: Commit, Publish, And Archive

- [ ] `[Agent]` Commit setup changes with a Conventional Commit subject, for example `git commit -m "chore: initial project setup"`.
- [ ] `[Agent]` Generate changelog entries with `npm run changelog`, then curate the result into `CHANGELOG.template.md`.
- [ ] `[Shared]` Prepare a Zenodo-ready site archive before a release with `npm run release:prepare -- --tag vX.Y.Z`, then commit `release-artifacts/site-vX.Y.Z.zip`.
- [ ] `[Shared]` Deploy documentation by merging or pushing validated changes to `main`, then confirming that the `Render and Publish` workflow succeeds.
- [ ] `[Agent]` Finalize README and changelog by deleting the template `README.md` and `CHANGELOG.md`, then renaming `README.template.md` to `README.md` and `CHANGELOG.template.md` to `CHANGELOG.md`.
- [ ] `[Agent]` Review final links in the README and published site.

Outcome: the GitHub repository, website, changelog, and Zenodo archive describe the same release.

## GitHub CLI Reference

Install the [GitHub CLI](https://cli.github.com/) if needed:

| Platform | Command or instructions                                                                      |
| -------- | -------------------------------------------------------------------------------------------- |
| macOS    | `brew install gh`                                                                            |
| Windows  | `winget install --id GitHub.cli`                                                             |
| Linux    | [GitHub CLI Linux instructions](https://github.com/cli/cli/blob/trunk/docs/install_linux.md) |

Check authentication before running repository-setting commands:

```bash
gh auth status
```

Enable security alerts and Dependabot security updates:

```bash
gh api --method PUT "repos/:owner/:repo/vulnerability-alerts" --silent
gh api --method PUT "repos/:owner/:repo/automated-security-fixes" --silent
```

Protect `main` by requiring pull request review, disallowing force pushes and deletions, and requiring conversation resolution:

```bash
gh api --method PUT "repos/:owner/:repo/branches/main/protection" --input - <<'JSON'
{
  "required_status_checks": null,
  "enforce_admins": false,
  "required_pull_request_reviews": {
    "required_approving_review_count": 1
  },
  "restrictions": null,
  "allow_force_pushes": false,
  "allow_deletions": false,
  "required_conversation_resolution": true
}
JSON
```

## Verification Summary

The setup is complete when placeholders are gone, `README.md` is the repository front door, `index.qmd` is the public homepage, checks pass for the languages you use, `npm run preview` renders without errors, GitHub Pages loads, security settings are active, and Zenodo DOI metadata is correct after the first release.
