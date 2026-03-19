# Changelog

All notable changes to this template will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.0]

### Added

- Quarto-based documentation and GitHub Pages publishing for FAIR and open research data projects.
- Zenodo integration guidance, `.zenodo.json` metadata support, and a release workflow that attaches the rendered site as a release asset.
- GitHub Codespaces/devcontainer setup, issue templates, citation metadata, and a curated showcase gallery spanning research, teaching, and living publications.
- Add a `CHANGELOG.template.md` scaffold so downstream projects can rename it consistently, just like `README.template.md`.
- Split citation and governance metadata into live repo files plus `.template` companions so the template can publish real DOI metadata without losing downstream placeholders.

### Changed

- Tooling around Prettier, Ruff, ty, styler, lintr, and Prek to make repository maintenance easier for both humans and agents.
- GitHub Actions workflows for changelog generation, link checking, site publication, and release packaging.
- Setup and governance documentation so coding agents can safely customize placeholders, update metadata, and prepare releases.
- Trim back template/project split notes in agent-facing docs so the repository stays easier to understand.

### Fixed

- Broken external links, 404s, project-renaming follow-ups, and assorted documentation inconsistencies discovered during template maintenance.
- Various template maintenance fixes across documentation and repository scaffolding.

### Security

- Guidance for security alerts, branch protection, and responsible disclosure as part of repository setup.
