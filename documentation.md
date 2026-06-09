---
title: Documentation Guide
description: Index for project documentation, methods, workflows, and decisions.
---

Use this page as the index for project documentation. Keep the homepage readable and put detailed methods, data dictionaries, workflows, and decisions here or in `documentation/`.

Good documentation lets contributors, reviewers, and future users understand what was done, why it was done, and how to reuse the work.

## Minimum Documentation

| Topic        | Where to document it                                     |
| ------------ | -------------------------------------------------------- |
| Project aim  | `README.md` and `index.qmd`                              |
| Data sources | `documentation/` or a dedicated data dictionary          |
| Data fields  | `documentation/` or files stored alongside `data/`       |
| Workflow     | `documentation/`, `analysis/`, `src/`, and runnable code |
| People       | `README.md`, `CITATION.cff`, and `project-management/`   |
| Decisions    | `project-management/` or linked issues and pull requests |
| Licenses     | `README.md`, `LICENSE-CCBY.md`, and `LICENSE-AGPL.md`    |
| Citation     | `README.md`, `CITATION.cff`, and Zenodo release metadata |

## Suggested Pages

| Page                               | Use it for                                      |
| ---------------------------------- | ----------------------------------------------- |
| `documentation/data-dictionary.md` | Field names, definitions, units, and values     |
| `documentation/methods.md`         | Collection, cleaning, analysis, and limitations |
| `documentation/reuse.md`           | Download, citation, license, and examples       |
| `documentation/workflow.md`        | Scripts, order of operations, and checks        |

Create only the pages your project needs. A short accurate page is better than a long placeholder.

## Maintenance Rule

Update documentation in the same pull request as the data, code, or workflow change. For background, see The Turing Way on [Code documentation](https://book.the-turing-way.org/reproducible-research/code-documentation) and [Creating Project Repositories](https://book.the-turing-way.org/project-design/pd-overview/project-repo).
