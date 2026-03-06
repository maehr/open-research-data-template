# Maintainers Guide

## `_quarto.yml` Override Mechanism

The CI workflow (`.github/workflows/quarto-publish.yml`) contains a step that copies `.github/_quarto.yml` over the root `_quarto.yml` **only** when the repository is `maehr/open-research-data-template`. This override customizes the Quarto configuration for the template's own documentation site.

**Template instances** (repositories created from this template) are not affected by this override. If you need to customize the Quarto configuration for your project, edit the root `_quarto.yml` directly.
