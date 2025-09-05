---
name: 'Update Template Placeholders'
description: 'Replace all template placeholders with actual values'
on:
  workflow_dispatch:
    inputs:
      project_name:
        description: 'Full project name'
        required: true
      repo_owner:
        description: 'Repository owner username'
        required: true
      repo_name:
        description: 'Repository name'
        required: true
      description:
        description: 'Project description'
        required: true
      contact:
        description: 'Contact method'
        required: true
      zenodo_record:
        description: 'Zenodo record ID (optional)'
        required: false

triggers:
  - '@copilot update placeholders'
---

# Update Template Placeholders

Replace the following placeholders throughout the repository:

- `FULLNAME` → {{ inputs.project_name }}
- `USERNAME` → {{ inputs.repo_owner }}
- `REPO_NAME` → {{ inputs.repo_name }}
- `SHORT_DESCRIPTION` → {{ inputs.description }}
- `[INSERT CONTACT METHOD]` → {{ inputs.contact }}
- `ZENODO_RECORD` → {{ inputs.zenodo_record || 'TBD' }}

## Files to update:

### Configuration Files

- `.github/ISSUE_TEMPLATE/config.yml`
- `_brand.yml`
- `_quarto.yml`
- `package.json`
- `CITATION.cff`

### Documentation Files

- `README.template.md` (rename to README.md after replacing current README.md)
- `SECURITY.md`
- `CHANGELOG.md`

### Project Management Files

- Files in `project-management/` directory

## Steps to perform:

1. **Search and replace placeholders** in all identified files
2. **Update package.json** with correct project metadata
3. **Configure CITATION.cff** with project-specific citation information
4. **Update documentation URLs** to point to the correct repository
5. **Replace README.md** with the updated README.template.md content
6. **Format all files** using `npm run format`
7. **Validate changes** using `npm run check`

## Post-processing commands:

```bash
npm run format
npm run check
```

Create a commit with the message: "feat: update template placeholders for project setup"
