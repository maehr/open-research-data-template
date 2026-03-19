# Tools

Tooling documentation makes the technical environment reproducible. The Turing Way recommends recording the software, services, and conventions needed to run the project so others do not have to reverse-engineer your setup.

## Why document tools?

- Collaborators can install and run the workflow without relying on private knowledge.
- Versioned tool records reduce "works on my machine" problems.
- Clear documentation shows which tools are required, optional, or replaceable.

## What should be documented?

- Required software, package managers, versions, and lockfiles.
- Setup steps for local development, testing, rendering, and release preparation.
- External services and integrations, including where configuration lives without exposing secrets.
- Naming conventions, style rules, validation commands, and automation scripts.

## How should you document it?

1. Keep machine-readable dependency files such as `package.json`, `pyproject.toml`, `DESCRIPTION`, and lockfiles in sync with human-readable setup instructions.
2. Put common commands in `README.md` or dedicated setup pages and make them copy-and-paste ready.
3. Explain why a tool is part of the workflow, not only how to install it.
4. Prefer pinned versions, executable examples, and one-command workflows when possible.
5. Update tool documentation in the same pull request as any tooling change.

Relevant Turing Way chapters: [Research Data Management](https://book.the-turing-way.org/reproducible-research/rdm), [Reproducible Environments](https://book.the-turing-way.org/reproducible-research/renv), [File Naming Convention](https://book.the-turing-way.org/project-design/info-management/filenaming), and [Code Styling](https://book.the-turing-way.org/project-design/info-management/code-styling).
