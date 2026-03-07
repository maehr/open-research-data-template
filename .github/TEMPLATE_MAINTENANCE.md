# Template Maintenance Guide

This file documents changes made to the template itself.

Use this split consistently across the repository:

- `README.md` describes the template repository and how to evaluate or maintain it.
- `README.template.md` is the scaffold that downstream projects should customize and rename to `README.md`.
- `CHANGELOG.md` stays as a clean scaffold for downstream projects.
- This file records template-specific release notes, changelog workflow, and other maintainer guidance that should not be copied into project instances.

## Template changelog workflow

When you are maintaining the template repository itself:

1. Fetch the complete git history if you are working with a shallow clone (`git fetch --tags --unshallow origin`).
2. Use `npm run commit` so each logical change lands in a single Conventional Commit that `git-cliff` can summarize cleanly.
3. Run `npm run changelog:unreleased` during iteration to preview only the pending template notes without flooding agent context.
4. Run `npm run changelog` when you are ready to draft template release notes, then curate the generated output into the release sections below.
5. Keep `CHANGELOG.md` minimal so repositories created from this template start with an empty project changelog.

## Template release notes

### [1.0.0] - 2026-03-07

#### Added

- Quarto-based documentation and GitHub Pages publishing for FAIR and open research data projects.
- Zenodo integration guidance, `.zenodo.json` metadata support, and a release workflow that attaches the rendered site as a release asset.
- GitHub Codespaces/devcontainer setup, issue templates, citation metadata, and a curated showcase gallery spanning research, teaching, and living publications.

#### Changed

- Tooling around Prettier, Ruff, ty, styler, lintr, and Prek to make repository maintenance easier for both humans and agents.
- GitHub Actions workflows for changelog generation, link checking, site publication, and release packaging.
- Setup and governance documentation so coding agents can safely customize placeholders, update metadata, and prepare releases.

#### Fixed

- Broken external links, 404s, project-renaming follow-ups, and assorted documentation inconsistencies discovered during template maintenance.

#### Security

- Guidance for security alerts, branch protection, and responsible disclosure as part of repository setup.
