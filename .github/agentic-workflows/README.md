# GitHub Agentic Workflows

This directory contains GitHub Agentic Workflows that automate the setup and maintenance of research data repositories created from this template.

## What are GitHub Agentic Workflows?

GitHub Agentic Workflows (`gh-aw`) allow you to describe automation tasks in natural language markdown files. GitHub Copilot then executes these instructions automatically, handling complex implementation details behind the scenes.

## Available Workflows

### 1. Template Setup (`setup-template.md`)

**Purpose**: Complete initial setup of a new repository created from this template.

**Triggers**:

- Comment `@copilot setup template` in any issue or PR
- Manual workflow dispatch in GitHub Actions
- When a new issue is opened

**What it does**:

- Replaces all template placeholders with actual values
- Configures repository settings
- Sets up documentation and builds
- Validates the setup

### 2. Update Placeholders (`update-placeholders.md`)

**Purpose**: Replace template placeholders with project-specific values.

**Triggers**:

- Comment `@copilot update placeholders` in any issue or PR
- Manual workflow dispatch with input parameters

**Required inputs**:

- Project name
- Repository owner username
- Repository name
- Project description
- Contact method
- Zenodo record ID (optional)

### 3. Validate Setup (`validate-setup.md`)

**Purpose**: Comprehensive validation that template setup is complete and correct.

**Triggers**:

- Comment `@copilot validate setup` in any issue or PR
- Automatically on push to main branch
- Automatically on pull requests

**What it checks**:

- All placeholders have been replaced
- Configuration files are valid
- Documentation links work
- Build and format commands succeed

### 4. Zenodo Integration (`zenodo-setup.md`)

**Purpose**: Configure Zenodo integration for DOI assignment and long-term archiving.

**Triggers**:

- Comment `@copilot setup zenodo` in any issue or PR
- Manual workflow dispatch with Zenodo details

**Required inputs**:

- Zenodo record ID
- Zenodo DOI

## How to Use These Workflows

### Prerequisites

1. Install the GitHub CLI extension:

   ```bash
   gh extension install githubnext/gh-aw
   ```

2. Initialize agentic workflows in your repository:
   ```bash
   gh aw init
   ```

### Using via GitHub Issues/PRs

1. Create an issue or comment in an existing issue/PR
2. Mention the trigger phrase (e.g., `@copilot setup template`)
3. GitHub Copilot will automatically execute the workflow

### Using via GitHub Actions

1. Go to your repository's Actions tab
2. Select the workflow you want to run
3. Click "Run workflow"
4. Provide any required inputs
5. Click "Run workflow" to start

### Using via Command Line

```bash
# List available workflows
gh aw list

# Run a specific workflow
gh aw run setup-template

# Run with inputs
gh aw run update-placeholders --input project_name="My Research Project"
```

## Workflow Execution Order

For a new repository, we recommend this execution order:

1. **Update Placeholders** - Replace template variables with actual values
2. **Template Setup** - Complete the initial setup
3. **Validate Setup** - Ensure everything is configured correctly
4. **Zenodo Integration** - Set up DOI and archiving (when ready)

## Customizing Workflows

These workflows are written in markdown and can be easily customized:

1. Edit the relevant `.md` file in this directory
2. Modify the instructions in natural language
3. Add or remove steps as needed
4. Update triggers or input parameters

## Troubleshooting

If a workflow doesn't work as expected:

1. Check that GitHub Copilot has access to your repository
2. Ensure the `gh-aw` extension is properly installed
3. Verify that the workflow file syntax is correct
4. Check repository permissions for automated actions

## Examples

### Complete Setup for New Repository

```bash
# Option 1: Single command setup
@copilot setup template

# Option 2: Step-by-step setup
@copilot update placeholders
@copilot validate setup
```

### Adding Zenodo Integration Later

```bash
@copilot setup zenodo
```

## Support

For questions about these workflows:

- Open an issue in this repository
- Check the [GitHub Agentic Workflows documentation](https://docs.github.com/en/copilot)
- Review the workflow files for detailed instructions
