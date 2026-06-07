# Project Setup Checklist

Use this checklist after creating a repository from the template. This file is the project workbench: it can contain unfinished tasks, reminders, setup commands, and maintenance notes.

Keep public explanations out of this file. Move stable information to `README.md`, `index.qmd`, `documentation.md`, or a page in `documentation/` once it is no longer a setup task.

## Owner Labels

| Label      | Meaning                                                                       |
| ---------- | ----------------------------------------------------------------------------- |
| `[Agent]`  | A coding agent can usually do this directly in the repository.                |
| `[Shared]` | An agent can prepare the work, but a maintainer approves the external action. |
| `[Manual]` | Complete this in GitHub, Zenodo, or another external service.                 |

## Why This Checklist Exists

Novice users should not have to decide where every note belongs. Use this rule:

| If you need to...                                           | Put it in...                              | Why                                                                         |
| ----------------------------------------------------------- | ----------------------------------------- | --------------------------------------------------------------------------- |
| Explain what the repository is and how to navigate it       | `README.md`                               | GitHub visitors need a short front door.                                    |
| Track unfinished setup or release work                      | `TODO.md`                                 | Maintainers need a checklist that can change often.                         |
| Explain the project to public readers                       | `index.qmd`                               | Website visitors need a readable homepage, not setup notes.                 |
| Describe methods, fields, workflows, or decisions in detail | `documentation/` or `project-management/` | Detailed records should stay findable without making the homepage too long. |

Examples:

| Text or task                                                         | Correct home     |
| -------------------------------------------------------------------- | ---------------- |
| `Replace USERNAME with maehr`                                        | `TODO.md`        |
| `Data are stored in data/ and scripts are stored in src/`            | `README.md`      |
| `This project documents historical voting records from 1900 to 1950` | `index.qmd`      |
| `The variable municipality_id uses the official federal code`        | `documentation/` |
| `Enable GitHub Pages with Source: GitHub Actions`                    | `TODO.md`        |

## Before You Start

- [ ] `[Agent]` Install dependencies with `npm install` if they are not already installed.
- [ ] `[Agent]` Install Git hooks with `npm run prepare`.
- [ ] `[Agent]` Start the Quarto preview with `npm run preview` and keep it running while editing documentation.
- [ ] `[Agent]` Read `README.md` to understand the template and this checklist to understand the setup path.

Why this matters: previewing early helps you catch broken links, missing files, and confusing pages while the project is still easy to change.

## Phase 1: Make The Project Identifiable

- [ ] `[Agent]` Replace placeholders in `.github/ISSUE_TEMPLATE/config.yml`, `_brand.yml`, `CITATION.template.cff`, `CODE_OF_CONDUCT.template.md`, `DESCRIPTION`, `package.json`, `pyproject.toml`, `README.template.md`, and `SECURITY.template.md`.
- [ ] `[Agent]` Update project values for `FULLNAME`, `USERNAME`, `REPO_NAME`, `SHORT_DESCRIPTION`, `[INSERT CONTACT METHOD]`, `GITHUB_REPO_ID`, `ZENODO_RECORD`, `DOI`, and the starting project version where they apply.
- [ ] `[Agent]` Customize citation metadata in `CITATION.template.cff`, including authors, title, repository URL, license, resource type, and DOI if already available.
- [ ] `[Agent]` Activate project citation and governance files by renaming `CITATION.template.cff` to `CITATION.cff`, `CODE_OF_CONDUCT.template.md` to `CODE_OF_CONDUCT.md`, and `SECURITY.template.md` to `SECURITY.md`.
- [ ] `[Agent]` Add favicons at the repository root if the project will publish a site: `favicon.ico`, `favicon-16x16.png`, `favicon-32x32.png`, `apple-touch-icon.png`, and Android icons.
- [ ] `[Agent]` Optionally add `.zenodo.json` for richer Zenodo metadata.

Why this matters: placeholders are useful in a template, but they make a project look unfinished and can break badges, citations, package metadata, and support links.

## Phase 2: Put Content In The Right Place

- [ ] `[Agent]` Customize `README.template.md` as the GitHub front door: project summary, repository structure, basic use, citation, support, authors, and license.
- [ ] `[Agent]` Customize `index.qmd` as the public website homepage: plain-language project introduction, target users, data or outputs, reuse guidance, and links to detailed pages.
- [ ] `[Agent]` Customize `documentation.md` and pages in `documentation/` for methods, data dictionaries, workflows, user guides, or other details that are too long for the homepage.
- [ ] `[Agent]` Review or remove placeholder files in `project-management/`, including communication, people, tools, and project-report pages.
- [ ] `[Agent]` Resolve TODO comments outside this checklist by searching for `TODO` and completing or removing each project-specific note.

Why this matters: public readers should not have to read setup tasks, and maintainers should not have to search the website for unfinished work. Keeping the files separate makes the project easier to teach, review, and maintain.

## Phase 3: Configure GitHub And Zenodo

- [ ] `[Shared]` Enable GitHub Security Alerts and Dependabot security updates with the GitHub CLI commands below, or use the GitHub web UI if CLI access is unavailable.
- [ ] `[Shared]` Protect the `main` branch with the GitHub CLI branch protection command below, or configure branch protection in the GitHub web UI.
- [ ] `[Manual]` Enable GitHub Pages in repository settings with **Source: GitHub Actions**.
- [ ] `[Manual]` Enable Zenodo-GitHub integration so releases can be archived and assigned DOIs.
- [ ] `[Agent]` Set up the Zenodo DOI badge by replacing `GITHUB_REPO_ID` in `README.template.md` with the numeric repository ID from `https://api.github.com/repos/USERNAME/REPO_NAME`.
- [ ] `[Shared]` After the first release, record DOI metadata by replacing `DOI` in `CITATION.cff` and `ZENODO_RECORD` in `README.template.md`.

Why this matters: repository settings affect publishing, security, citation, and long-term preservation. Some settings need maintainer approval because they happen outside the files in this repository.

## Phase 4: Validate The Project Locally

- [ ] `[Agent]` Format files with `npm run format`.
- [ ] `[Agent]` Check formatting with `npm run check`.
- [ ] `[Agent]` Lint Python code with `uv run ruff check` if Python code is present.
- [ ] `[Agent]` Type-check Python code with `uv run ty check` if Python code is present.
- [ ] `[Agent]` Format and lint R code with `styler::style_dir(".")` and `lintr::lint_dir(".")` if R code is present.
- [ ] `[Agent]` Preview documentation with `npm run preview` and fix rendering issues.
- [ ] `[Agent]` Optionally check links with `npm run lychee-check` if link checking is configured for the project.

Why this matters: validation catches formatting problems, broken documentation pages, and language-specific errors before they become public or archived.

## Phase 5: Commit, Publish, And Archive

- [ ] `[Agent]` Commit setup changes with a Conventional Commit subject, for example `git commit -m "chore: initial project setup"`.
- [ ] `[Agent]` Generate changelog entries with `npm run changelog`, then curate the result into `CHANGELOG.template.md`.
- [ ] `[Shared]` Prepare a Zenodo-ready site archive before a release with `npm run release:prepare -- --tag vX.Y.Z`, then commit `release-artifacts/site-vX.Y.Z.zip`.
- [ ] `[Shared]` Deploy documentation by merging or pushing validated changes to `main`, then confirming that the `Render and Publish` workflow succeeds.
- [ ] `[Agent]` Finalize README and changelog by deleting the template `README.md` and `CHANGELOG.md`, then renaming `README.template.md` to `README.md` and `CHANGELOG.template.md` to `CHANGELOG.md`.
- [ ] `[Agent]` Review final links in the README and published site.

Why this matters: releases are easier to cite and preserve when the rendered site, changelog, DOI metadata, and repository files all describe the same version of the project.

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

The setup is complete when placeholders are gone, `README.md` is the repository front door, `index.qmd` is the public homepage, formatting passes, language checks pass for the languages you use, `npm run preview` renders without errors, GitHub Pages loads correctly, security settings are active, and Zenodo DOI metadata is correct after the first release.
