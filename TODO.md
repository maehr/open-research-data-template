# Project Setup Checklist

Complete the following steps after creating your project from this template to customize and finalize your project. Each item is designed to be clear and actionable for both human users and AI assistants.

## Essential Setup Tasks

- [ ] **Enable GitHub Security Alerts**: Navigate to your repository's "Security" tab on GitHub and enable Dependabot alerts and security updates to monitor vulnerabilities in dependencies.
- [ ] **Protect the Main Branch**: In repository settings under "Branches", add a branch protection rule for `main` to require pull request reviews before merging and prevent force pushes.
- [ ] **Update Project Details**: Replace all placeholder values in the following files with your actual project information:
  - `FULLNAME` → Your full name (e.g., "Jane Doe")
  - `USERNAME` → Your GitHub username (e.g., "janedoe")
  - `REPO_NAME` → Your repository name (e.g., "my-research-data")
  - `SHORT_DESCRIPTION` → Brief description of your project (e.g., "Analysis of climate data from 2020-2024")
  - `[INSERT CONTACT METHOD]` → Your contact email or preferred method
  - `GITHUB_REPO_ID` → Your GitHub repository ID (e.g., "123456789")
  - `ZENODO_RECORD` → Your Zenodo record number (e.g., "1234567") after first release or manually create a Zenodo deposit
  - `DOI` → Your DOI after first release (e.g., "10.5281/zenodo.1234567")
  - Files to update: `.github/ISSUE_TEMPLATE/config.yml`, `_brand.yml`, `CODE_OF_CONDUCT.md`, `package.json`, `pyproject.toml`, `README.template.md`, and `SECURITY.md`
- [ ] **Set Up Zenodo Integration**: Follow the [GitHub guide for Zenodo integration](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content) to enable automatic archiving and obtain a DOI for your repository.
- [ ] **Set Up Zenodo DOI Badge**: Replace `GITHUB_REPO_ID` with the repository ID from `https://api.github.com/repos/USERNAME/REPO_NAME` (look for the `id` field in the JSON response). The badge will automatically display your Zenodo DOI after the first release.
- [ ] **Add Zenodo DOI to README**: After creating your first release and obtaining a Zenodo DOI, replace `ZENODO_RECORD` in README.md with your actual Zenodo record number (found in your Zenodo deposit URL).
- [ ] **Add Favicons**: Generate and add favicon files to the root directory using [favicon.io](https://favicon.io/) or a similar service. Include `favicon.ico`, `favicon-16x16.png`, `favicon-32x32.png`, `apple-touch-icon.png`, and Android icons.
- [ ] **Address TODO Comments**: Search for `TODO` comments throughout all project files using `grep -r "TODO" .` and complete or remove each task as appropriate for your project.
- [ ] **Finalize README**: Once all customization is complete, delete the template README.md and rename `README.template.md` to `README.md` to make it your project's main README.
- [ ] **Format Files**: Run `npm run format` to apply consistent formatting to all files using Prettier before committing changes.
- [ ] **Commit Changes**: Use `npm run commit` to create a properly formatted commit message following Conventional Commits standards (e.g., "chore: initial project setup").
- [ ] **Generate Changelog**: Run `npm run changelog` to generate changelog entries from your commit history, then copy the output into `CHANGELOG.md`.
- [ ] **Customize Documentation**: Adapt the Quarto documentation to your project by editing `.qmd` files, adding your data analysis, visualizations, and narrative. See [Quarto documentation](https://quarto.org/docs/websites/#workflow) for guidance.
- [ ] **Enable GitHub Pages**: In repository settings under "Pages", set the source to "Deploy from a branch" and select the `gh-pages` branch and `/ (root)` folder.
- [ ] **Publish Documentation**: Run `quarto publish gh-pages` to build and publish your documentation website to GitHub Pages.

## Optional Enhancements

- [ ] **Add Citation File**: Create a `CITATION.cff` file with your project's citation metadata using the [Citation File Format guide](https://citation-file-format.github.io/). Include authors, title, version, DOI, and repository URL.
- [ ] **Add Zenodo Metadata File**: Create a `.zenodo.json` file to control metadata sent to Zenodo during archival. Include custom creators, contributors, keywords, and license information. See [Zenodo developer documentation](https://developers.zenodo.org/?python#add-metadata-to-your-github-repository-release) for schema details.

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
