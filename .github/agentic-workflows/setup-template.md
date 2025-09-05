---
name: 'Template Setup Automation'
description: 'Automate the initial setup of research data template'
on:
  workflow_dispatch:
  issues:
    types: [opened]

triggers:
  - '@copilot setup template'
---

# Research Data Template Setup

When a new repository is created from this template, perform the following setup tasks:

## 1. Update Project Metadata

- Replace `FULLNAME` with the project's full name
- Replace `USERNAME` with the repository owner's username
- Replace `REPO_NAME` with the actual repository name
- Replace `SHORT_DESCRIPTION` with the project description
- Replace `[INSERT CONTACT METHOD]` with appropriate contact information
- Replace `ZENODO_RECORD` with the actual Zenodo DOI once available

## 2. Configure Repository Settings

- Enable GitHub Security Alerts in repository settings
- Set up branch protection for the main branch
- Configure issue templates with updated contact information

## 3. File Management

- Run `npm run format` to format all files
- Generate initial changelog with `npm run changelog`
- Update CITATION.cff with project-specific information
- Rename README.template.md to README.md after deleting the current README.md

## 4. Documentation Setup

- Update \_brand.yml with project branding
- Configure \_quarto.yml with project-specific settings
- Set up GitHub Pages if requested

## 5. Validation

- Verify all placeholder text has been replaced
- Check that all configuration files are valid
- Ensure documentation builds successfully

Create a pull request with these changes and provide a summary of completed setup tasks.
