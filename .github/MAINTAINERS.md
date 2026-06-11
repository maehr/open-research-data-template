# Maintainers Guide

## `_quarto.yml` Override Mechanism

The CI workflows (`.github/workflows/quarto-publish.yml` and `.github/workflows/release.yml`) contain a guarded step that copies `.github/template-site/_quarto.yml` over the root `_quarto.yml` **only** when the repository is `maehr/open-research-data-template`. This override customizes the Quarto configuration for the template's own GitHub Pages showcase site.

**Template instances** (repositories created from this template) and forks are not affected by this override. They keep using the root `_quarto.yml` as their project configuration.

Use these files intentionally:

- Edit root `_quarto.yml` for downstream project behavior.
- Edit `.github/template-site/_quarto.yml` for the template repository showcase at <https://maehr.github.io/open-research-data-template/>.
