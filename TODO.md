# Project Setup Checklist

Complete the following steps after creating your project from this template to customize and finalize your project. Each item is designed to be clear and actionable for both human users and AI assistants. If you are using GitHub Copilot or another coding agent, start with [.github/copilot-instructions.md](.github/copilot-instructions.md) and use the labels below to divide work clearly.

- 🤖 **Agent-assisted**: a coding agent can usually do this directly in the repository.
- 👤 **Manual**: this must be completed in GitHub, Zenodo, or another external service.
- 🤝 **Shared**: an agent can prepare the repository work, but a maintainer should approve the final platform action.

## Essential Setup Tasks

- [ ] 👤 **Enable GitHub Security Alerts**: Navigate to your repository's "Security" tab on GitHub and enable Dependabot alerts and security updates to monitor vulnerabilities in dependencies.
- [ ] 👤 **Protect the Main Branch**: In repository settings under "Branches", add a branch protection rule for `main` to require pull request reviews before merging and prevent force pushes.
- [ ] 🤖 **Update Project Details**: Replace all placeholder values in the following files with your actual project information:
  - `FULLNAME` → Your full name (e.g., "Jane Doe")
  - `USERNAME` → Your GitHub username (e.g., "janedoe")
  - `REPO_NAME` → Your repository name (e.g., "my-research-data")
  - `SHORT_DESCRIPTION` → Brief description of your project (e.g., "Analysis of climate data from 2020-2024")
  - `[INSERT CONTACT METHOD]` → Your contact email or preferred method
  - `GITHUB_REPO_ID` → Your GitHub repository ID (e.g., "123456789")
  - `ZENODO_RECORD` → Your Zenodo record number (e.g., "1234567") after first release or manually create a Zenodo deposit
  - `DOI` → Your DOI after first release (e.g., "10.5281/zenodo.1234567")
  - Files to update: `.github/ISSUE_TEMPLATE/config.yml`, `_brand.yml`, `CITATION.template.cff`, `CODE_OF_CONDUCT.template.md`, `package.json`, `pyproject.toml`, `README.template.md`, and `SECURITY.template.md`
- [ ] 🤖 **Activate Project-Specific Citation and Governance Files**: After replacing placeholders, rename `CITATION.template.cff` to `CITATION.cff`, `CODE_OF_CONDUCT.template.md` to `CODE_OF_CONDUCT.md`, and `SECURITY.template.md` to `SECURITY.md` so GitHub shows your project's metadata instead of the template repository's.
- [ ] 👤 **Set Up Zenodo Integration**: Follow the [GitHub guide for Zenodo integration](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content) to enable automatic archiving and obtain a DOI for your repository.
- [ ] 🤖 **Set Up Zenodo DOI Badge**: In `README.template.md`, replace `GITHUB_REPO_ID` in the badge image URL with the repository ID from `https://api.github.com/repos/USERNAME/REPO_NAME` (look for the `id` field in the JSON response). The badge will automatically display your DOI after the first release.
- [ ] 🤝 **Record Zenodo DOI Metadata**: After creating your first release and obtaining a DOI, replace `DOI` in `CITATION.cff`, and replace `ZENODO_RECORD` in the badge target in `README.template.md` with your actual record number.
- [ ] 🤖 **Add Favicons**: Generate and add favicon files to the root directory using [favicon.io](https://favicon.io/) or a similar service. Include `favicon.ico`, `favicon-16x16.png`, `favicon-32x32.png`, `apple-touch-icon.png`, and Android icons.
- [ ] 🤖 **Address TODO Comments**: Search for `TODO` comments throughout all project files using `grep -r "TODO" .` and complete or remove each task as appropriate for your project.
- [ ] 🤖 **Customize Citation File**: Update `CITATION.template.cff` with your project's authors, title, repository URL, license, and preferred resource type before you rename it to `CITATION.cff`. Add `DOI` after the first release if you do not have one yet.
- [ ] 🤖 **Finalize README and Changelog**: Once all customization is complete, delete the template `README.md` and `CHANGELOG.md`, then rename `README.template.md` to `README.md` and `CHANGELOG.template.md` to `CHANGELOG.md`.
- [ ] 🤖 **Format Files**: Run `npm run format` to apply consistent formatting to all files using Prettier before committing changes.
- [ ] 🤖 **Commit Changes**: Use `npm run commit` to create a properly formatted commit message following Conventional Commits standards (e.g., "chore: initial project setup").
- [ ] 🤖 **Generate Changelog**: Run `npm run changelog` to generate entries from your project's commit history, then curate the output into `CHANGELOG.template.md`.
- [ ] 🤝 **Prepare a Zenodo-ready Site Archive**: Before creating a GitHub release, run `npm run release:prepare -- --tag vX.Y.Z`, review the generated `release-artifacts/site-vX.Y.Z.zip`, and commit it with `npm run commit`. Zenodo archives files that are already in the tagged repository snapshot, not GitHub release assets that are added later. If your Quarto project uses a different output directory, pass it through with `--site-dir`.
- [ ] 🤖 **Customize Documentation**: Adapt the Quarto documentation to your project by editing `.qmd` files, adding your data analysis, visualizations, and narrative. See [Quarto documentation](https://quarto.org/docs/websites/#workflow) for guidance.
- [ ] 👤 **Enable GitHub Pages**: In repository settings under "Pages", set the source to **GitHub Actions** so the built-in deployment workflow can publish the site.
- [ ] 🤝 **Deploy Documentation**: After preview and validation checks pass, merge or push the approved changes to `main` and confirm the `Render and Publish` workflow deploys the site successfully. Use the workflow's manual dispatch option only if you need to rerun the deployment.

## Optional Enhancements

- [ ] 🤖 **Add Zenodo Metadata File**: Create a `.zenodo.json` file to control metadata sent to Zenodo during archival. Include custom creators, contributors, keywords, and license information. See [Zenodo developer documentation](https://developers.zenodo.org/?python#add-metadata-to-your-github-repository-release) for schema details.
- [ ] 🤖 **Review Project-Management Files**: Populate or remove the files in `project-management/` before publishing. These are placeholder templates for meeting notes and project plans.
- [ ] 🤖 **Rendered Site on GitHub Releases**: The `release.yml` workflow also uploads `release-artifacts/site-<tag>.zip` to the GitHub release page for convenient downloading after publication, but Zenodo preservation depends on the committed archive from the tagged snapshot.

## Verification Steps

After completing the checklist:

1. Run `npm run check` to verify all files are properly formatted
2. Run `uv run ruff check` to verify Python code passes linting
3. Run `uv run ty check` to verify Python type checking (if applicable)
4. Run `styler::style_dir(".")` in R to format R code
5. Run `lintr::lint_dir(".")` in R to verify R code passes linting
6. Run `quarto preview` to ensure documentation renders correctly
7. Review your GitHub Pages site to confirm it displays as expected
8. Test that all links in your README work correctly
9. Verify that security alerts and branch protection are active
