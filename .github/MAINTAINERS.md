# Maintainers Guide

## `_quarto.yml` Override Mechanism

The CI workflows (`.github/workflows/quarto-publish.yml` and `.github/workflows/release.yml`) contain a guarded step that copies template-site files over root project-facing files **only** when the repository is `maehr/open-research-data-template`. This override customizes the Quarto configuration and content for the template's own GitHub Pages showcase site.

**Template instances** (repositories created from this template) and forks are not affected by this override. They keep using the root `_quarto.yml` as their project configuration.

Use these files intentionally:

- Edit root `_quarto.yml` for downstream project behavior.
- Edit `.github/template-site/_quarto.yml` for the template repository showcase at <https://maehr.github.io/open-research-data-template/>.
- Edit `.github/template-site/index.qmd` when the template repository homepage should differ from the downstream `index.qmd` scaffold. It currently includes root `README.md`.
- Edit `.github/template-site/agent-release-workflow.qmd` for the showcase release-workflow page. The workflows copy it to root `release-workflow.qmd` so Quarto renders it as `release-workflow.html`.
