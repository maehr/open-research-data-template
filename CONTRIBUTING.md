# Contributing

Contributions are welcome when they make the template clearer, easier to reuse, or more reliable for research data projects.

Please follow the [code of conduct](CODE_OF_CONDUCT.md) in all project spaces.

## Local and Agent Setup

Use [GitHub Codespaces](https://github.com/features/codespaces) or follow the local setup steps in [README.md](README.md). For coding agents, start with [.github/copilot-instructions.md](.github/copilot-instructions.md) so repository-specific rules are applied before changes are made.

Agents can usually handle documentation edits, placeholder replacement, formatting, changelog generation, and preview preparation. Maintainers should still personally review any GitHub or Zenodo settings changes and any production publication steps.

## Pull Request Process

1. Open an issue first for large changes, behavior changes, or new tooling.
2. Keep pull requests focused and explain the academic user need they address.
3. Update affected docs together, especially `README.md`, `README.template.md`, `TODO.md`, `index.qmd`, and citation or governance templates.
4. Run `npm run preview` while editing documentation.
5. Run `npm run format` and `npm run check` before requesting review.
6. Run language-specific checks when relevant: `uv run ruff check`, `uv run ty check`, `styler::style_dir(".")`, and `lintr::lint_dir(".")`.
7. Commit with a Conventional Commit subject, for example `git commit -m "docs: simplify project setup guide"`.
8. Wait for maintainer review before merging.
