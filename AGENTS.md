# AGENTS Guidelines for This Repository

This repository is a GitHub template for FAIR and open research data documentation. When working on this project interactively with an agent (e.g., GitHub Copilot, cursor, or other AI-assisted development tools), please follow the guidelines below to ensure a smooth development experience and maintain the integrity of the template.

## 1. Use Preview Mode for Documentation, **not** Production Builds

- **Always use `quarto preview` (or `uv run quarto preview`)** while iterating on documentation. This starts Quarto in preview mode with live reload enabled, allowing you to see changes instantly.
- **Do _not_ run `quarto render` or `quarto publish` inside agent sessions** unless specifically instructed. These commands generate production assets that are meant for final deployment, not active development.
- The preview server should be running in the background while you make changes to `.qmd`, `.md`, or other documentation files.

## 2. Preserve Template Placeholders

This repository contains placeholder values (e.g., `USERNAME`, `REPO_NAME`, `FULLNAME`, `SHORT_DESCRIPTION`, `ZENODO_RECORD`) that users will replace when creating their own projects:

- **Do _not_ replace or remove these placeholders** unless the task specifically requires updating them.
- When making changes, ensure placeholders remain intact in template files like `README.template.md`, `package.json`, `.github/ISSUE_TEMPLATE/config.yml`, `_brand.yml`, `CODE_OF_CONDUCT.md`, and `SECURITY.md`.

## 3. Follow Existing Formatting Standards

- **Always run `npm run format`** before committing changes to ensure consistency.
- Use `npm run check` to verify that all files are properly formatted without making changes.
- The repository uses [Prettier](https://prettier.io/) for consistent code formatting across all file types.

## 4. Commit Messages and Changelog

- **Use `npm run commit`** to create standardized commit messages following [Conventional Commits](https://www.conventionalcommits.org/).
- Do _not_ commit directly with `git commit` unless absolutely necessary.
- Use `npm run changelog` to generate changelog entries based on commit history, but only after commits have been made.

## 5. Maintain Repository Structure

The repository follows [The Turing Way's Advanced Structure for Data Analysis](https://the-turing-way.netlify.app/project-design/project-repo/project-repo-advanced.html):

- `analysis/`: Scripts and notebooks for data analysis
- `assets/`: Images, logos, and media files
- `build/`: Scripts for building or processing data
- `data/`: Data files (should follow FAIR principles)
- `documentation/`: Extended documentation beyond README
- `project-management/`: Project planning and meeting notes
- `src/`: Source code for data collection or processing
- `test/`: Tests for code and data validation

When adding or modifying files, respect this structure and place files in their appropriate directories.

## 6. Dependencies Management

If you need to add or update dependencies:

### Node.js (npm)

1. Add the dependency using `npm install <package-name>`
2. Commit the updated `package.json` and `package-lock.json`
3. Run `npm run prepare` to reinitialize husky hooks if needed

### Python (uv)

1. Add dependencies to `pyproject.toml`
2. Run `uv sync` to update the lock file
3. Commit both `pyproject.toml` and `uv.lock`

### R (renv)

1. Install packages in R: `install.packages("package-name")`
2. Run `renv::snapshot()` to update the lockfile
3. Commit the updated `renv.lock`

## 7. Documentation Best Practices

When working with Quarto documentation:

- Use `.qmd` files for interactive, executable documentation with embedded code
- Use `.md` files for static documentation
- Include proper YAML front matter in `.qmd` files
- Test code chunks to ensure they execute correctly
- Keep visualizations and outputs reproducible

## 8. Testing and Validation

Before finalizing changes:

- Run `npm run check` to verify formatting
- Preview documentation with `quarto preview` to check for rendering errors
- Test any scripts or code in `src/`, `build/`, or `analysis/` directories
- Verify that workflows in `.github/workflows/` still function correctly

## 9. Working with GitHub Features

This template includes several GitHub-specific features:

- **Branch Protection**: The `main` branch should be protected; work in feature branches
- **Issue Templates**: Located in `.github/ISSUE_TEMPLATE/` - do not modify unless improving the template
- **Workflows**: GitHub Actions in `.github/workflows/` automate changelog generation, greetings, and Quarto publishing
- **Security**: `SECURITY.md` and security alerts should remain active

## 10. Useful Commands Recap

| Command                   | Purpose                                                                |
| ------------------------- | ---------------------------------------------------------------------- |
| `quarto preview`          | Start Quarto preview server with live reload                           |
| `uv run quarto preview`   | Same as above, but ensures correct Python environment                  |
| `npm run check`           | Check file formatting without making changes                           |
| `npm run format`          | Format all files using Prettier                                        |
| `npm run commit`          | Interactive commit message wizard (Conventional Commits)               |
| `npm run changelog`       | Generate changelog from commit history                                 |
| `npm run prepare`         | Setup husky git hooks                                                  |
| `uv sync`                 | Synchronize Python dependencies                                        |
| `renv::restore()`         | Restore R environment from lockfile                                    |
| `quarto render`           | **Production render – _avoid during agent sessions_**                  |
| `quarto publish gh-pages` | **Production publish to GitHub Pages – _avoid during agent sessions_** |

---

Following these practices ensures that agent-assisted development maintains the template's structure, integrity, and usability for future users. When in doubt, preview changes rather than building for production, and always respect the template's placeholder system.
