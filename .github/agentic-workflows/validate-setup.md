---
name: 'Validate Template Setup'
description: 'Validate that template setup is complete and correct'
on:
  workflow_dispatch:
  push:
    branches: [main]
  pull_request:
    branches: [main]

triggers:
  - '@copilot validate setup'
---

# Validate Template Setup

Perform comprehensive validation to ensure the template has been properly set up and all placeholders have been replaced.

## 1. Placeholder Validation

Check that the following placeholders have been replaced in all files:

### Required Replacements

- `FULLNAME` should not appear in any files
- `USERNAME` should not appear in any files (except in comments or documentation about the template)
- `REPO_NAME` should not appear in any files
- `SHORT_DESCRIPTION` should not appear in any files
- `[INSERT CONTACT METHOD]` should not appear in any files

### Optional Replacements

- `ZENODO_RECORD` may still exist if Zenodo setup is pending

## 2. File Structure Validation

Verify the following file structure requirements:

- `README.md` exists and contains project-specific content (not template content)
- `README.template.md` can be removed after setup is complete
- `CITATION.cff` contains valid citation information
- `package.json` has correct project metadata

## 3. Configuration Validation

Check that configuration files are properly set up:

### GitHub Configuration

- `.github/ISSUE_TEMPLATE/config.yml` has correct repository URLs
- All workflow files reference the correct repository

### Documentation Configuration

- `_brand.yml` has project-specific branding
- `_quarto.yml` has correct URLs and project information
- All documentation links point to the correct repository

### Security Configuration

- `SECURITY.md` has appropriate contact information

## 4. Build and Format Validation

Run the following commands to ensure everything is properly configured:

```bash
# Check formatting
npm run check

# Format files if needed
npm run format

# Generate changelog
npm run changelog
```

## 5. Repository Settings Validation

Verify repository settings (manual check or via GitHub API):

- Repository description matches SHORT_DESCRIPTION
- Repository topics are appropriate
- GitHub Pages is configured if documentation exists
- Branch protection rules are set up for main branch
- Security alerts are enabled

## 6. Documentation Validation

Check that documentation is complete and accurate:

- All links in documentation work and point to correct URLs
- README.md provides clear project description
- Contributing guidelines are updated with project-specific information
- License files are appropriate for the project

## Validation Results

Generate a report showing:

- ✅ Items that passed validation
- ❌ Items that failed validation
- ⚠️ Items that need manual attention

If validation fails, provide specific instructions on how to fix each issue.
