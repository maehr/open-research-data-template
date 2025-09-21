# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased](https://github.com/maehr/open-research-data-template/compare/...HEAD)

### Maintenance

- Changelog and dependencies ([#32](https://github.com/maehr/open-research-data-template/issues/32))

## [2025-07-04] - 2507 Fixes

### Bug Fixes

- Correct typo in issue template and update project details in README; add codelist.txt
- Remove unnecessary shebang from pre-commit hook and clean up README formatting
- Update links in README for GitHub Codespaces setup instructions
- Disable TinyTeX installation in devcontainer configuration
- Fix typo

### Features

- Clarify instruction language
- Add zenodo badge placeholder to template readme

### Styling

- Formatting improvements

## [2025-06-19] - DevContainer Support

### Features

- Add GitHub Codespaces support and update README with setup instructions
- Add devcontainer configuration for Quarto environment
- Add devcontainer configurations for Quarto and uv environments with installation scripts
- Add quarto-computing-dependencies-ord feature with installation script for R and Python dependencies
- Add virtual environment setup for Python dependencies in install.sh
- Add Julia dependencies to quarto-computing-dependencies-ord install script
- Add R package installation logic to install script
- Add terminal image asset for documentation

### Bug Fixes

- Update devcontainer configuration for quarto-computing-dependencies and format settings
- Clean up devcontainer.json by removing commented-out code and improving formatting
- Comment out Julia dependencies in devcontainer-feature.json for clarity
- Comment out Julia dependency installation in install.sh for clarity
- Update package manager from npm to pnpm in install script and enable ppa for git feature
- Add conditional check for uv.lock before running uv sync
- Update documentation links formatting in README.md
- Correct title spelling in index.qmd
- Update comments in install.sh and .gitignore for clarity and accuracy
- Update DOI badge in README and clarify Zenodo DOI setup instructions
- Ensure Node packages are prepared after installation

### Refactor

- Clean up devcontainer configuration and remove unused scripts
- Update README for clarity and organization, enhancing setup instructions

### Maintenance

- Replace pnpm-lock.yaml with package-lock.json for npm compatibility

## [2025-06-19] - Branding

### Features

- Add branding via \_brand.yml

### Bug Fixes

- Fix typo

## [2025-03-06] - Better CI

### Features

- Enhance GitHub Actions workflow with linting, deadlink check, and improved deployment steps
- Add CITATION.cff file and update README with correct issue template file extension
- Add Quarto setup step in GitHub Actions workflow

### Bug Fixes

- Remove conditional check for JamPack optimization in Quarto publish workflow
- Update path for JamPack optimization in Quarto publish workflow
- Remove redundant path specification in Quarto publish workflow
- Update path specification for built-site in Quarto publish workflow
- Update GitHub Actions workflow to use deploy-pages action for publishing
- Update artifact name in Quarto publish workflow for consistency
- Simplify deploy job name and add environment details in Quarto publish workflow
- Update artifact names in Quarto publish workflow for clarity and consistency

### Documentation

- Fix formatting of data issue report template path in README

### Maintenance

- Update dependencies in package.json and pnpm-lock.yaml

### Refactor

- Update GitHub Actions workflow to deploy to GitHub Pages

## [2024-05-07] - Documentation Improvements

### Documentation

- Quarto instructions improved
- Update URL

## [2024-05-06] - Various Fixes

### Bug Fixes

- README and licenses fixed
- Wrong URI fix

### Continuous Integration

- Fixed quarto pipeline
- Labeler conf migrated to v5
- Labeler removed due to overcomplicated config
- Sveltekitci quickfix

### Maintenance

- Dependencies updated to latest
- Husky config updated

## [2024-05-06] - Quarto Support

### Features

- Remove github pages config
- Quarto support added
- Improve rendering by changing licenses file format

### Bug Fixes

- Merge conflict
- Implement dual licensing

### Continuous Integration

- Quarto ci improvement
- Test
- Update labeler

### Documentation

- Quarto added

## [2024-05-04] - Dual Licensing

### Features

- Add dual licensing (fixes [#5](https://github.com/maehr/open-research-data-template/issues/5))

### Bug Fixes

- Add missing license information
- Merge conflict solved

## [2024-05-02] - Zenodo Integration

### Features

- .zenodo.json added (fixes [#8](https://github.com/maehr/open-research-data-template/issues/8))
- Add more consistent variables
- Update reference link

### Refactor

- Remove cff and zenodo files for clarity

## [2024-04-30] - Bug Fixes

### Bug Fixes

- Fix 404 issue ([#7](https://github.com/maehr/open-research-data-template/issues/7))
- Fix 404 issue ([#9](https://github.com/maehr/open-research-data-template/issues/9))

## [2023-11-01] - CI Updates

### Continuous Integration

- Update GitHub actions

## [2023-10-19] - Project Renaming

### Breaking Changes

- Project renaming ([#4](https://github.com/maehr/open-research-data-template/issues/4))

## [2023-08-08] - Maintenance

### Maintenance

- Dependencies updated

## [2023-05-10] - Documentation and Templates

### Documentation

- Typos and formatting and improved issue templates ([#1](https://github.com/maehr/open-research-data-template/issues/1))

## [2023-04-03] - Fixes

### Bug Fixes

- Pre-commit hook and docs fixed

## [2023-03-21] - Changelog and Instructions

### Documentation

- Auto CHANGELOG and better instructions

## [2023-03-17] - Initial Features

### Features

- Initial version

### Documentation

- Docs for Zenodo added
- Fixed various typos and replaced favicon

## [2023-03-15] - Project Creation

### Features

- Initial commit

<!-- generated by git-cliff -->
