# Tools

Use this page to document the software and services needed to run, check, publish, and archive the project.

## Required Software

| Tool            | Purpose                                        | Version or source                     |
| --------------- | ---------------------------------------------- | ------------------------------------- |
| Node.js and npm | Documentation commands and formatting          | See `package.json`                    |
| Quarto          | Website preview and rendering                  | Managed through `uv` command wrappers |
| Python and uv   | Python environment, linting, and type checking | See `pyproject.toml` and `uv.lock`    |
| R and renv      | R environment, formatting, and linting         | See `DESCRIPTION` and `renv.lock`     |
| GitHub CLI      | Optional repository settings automation        | <https://cli.github.com/>             |

## Common Commands

| Task                 | Command             |
| -------------------- | ------------------- |
| Install dependencies | `npm install`       |
| Install Git hooks    | `npm run prepare`   |
| Preview website      | `npm run preview`   |
| Format files         | `npm run format`    |
| Check formatting     | `npm run check`     |
| Lint Python          | `uv run ruff check` |
| Type-check Python    | `uv run ty check`   |

Run language-specific commands only when the project uses that language.

## External Services

| Service         | Purpose                                | Configuration note                                     |
| --------------- | -------------------------------------- | ------------------------------------------------------ |
| GitHub Pages    | Publishes the Quarto site              | Enable Source: GitHub Actions                          |
| Zenodo          | Archives releases and mints DOIs       | Enable the GitHub integration before the first release |
| GitHub Security | Security alerts and Dependabot updates | Enable in repository settings                          |

Do not commit secrets, access tokens, or private credentials.
