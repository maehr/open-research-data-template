# GitHub Template for FAIR and Open Research Data

**Transform research documentation from a static afterthought into a living, executable environment.**

This repository is a GitHub template for documenting, publishing, and archiving research data in line with [FAIR](https://www.go-fair.org/fair-principles/) and open science principles. It works across data types and follows practices from [The Turing Way](https://book.the-turing-way.org/): structured documentation with [Quarto](https://quarto.org/), publication with [GitHub Pages](https://pages.github.com/), release archiving with [Zenodo](https://zenodo.org/), and repeatable local checks.

[![GitHub issues](https://img.shields.io/github/issues/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/issues)
[![GitHub forks](https://img.shields.io/github/forks/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/network)
[![GitHub stars](https://img.shields.io/github/stars/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/stargazers)
[![Code license](https://img.shields.io/github/license/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/blob/main/LICENSE-AGPL.md)
[![Data license](https://img.shields.io/github/license/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/blob/main/LICENSE-CCBY.md)
[![DOI](https://zenodo.org/badge/614287827.svg)](https://doi.org/10.5281/zenodo.19111355)

> [!IMPORTANT]
> This `README.md` describes the **template repository itself**. If you created a new repository from this template, start with [TODO.md](TODO.md), then customize [README.template.md](README.template.md), [CITATION.template.cff](CITATION.template.cff), [CODE_OF_CONDUCT.template.md](CODE_OF_CONDUCT.template.md), [SECURITY.template.md](SECURITY.template.md), and [CHANGELOG.template.md](CHANGELOG.template.md) as directed there.

## Why This Template Exists

Research data often becomes difficult to reuse because the documentation, code, decisions, and publication steps live in different places. This template keeps them together in one version-controlled repository.

That matters because:

- Future users can see what the data represents, how it was created, and how it should be cited.
- Contributors can find the right place for data, analysis, documentation, tests, and project notes.
- Maintainers can run the same checks before releases instead of relying on memory.
- Published documentation and archived releases can stay connected to the repository history.

## The Three Entry Points

This template separates repository orientation, setup work, and the public website. That separation is intentional and especially useful for novice users.

| File        | Job                | Put this there                                                                       | Do not put this there                               |
| ----------- | ------------------ | ------------------------------------------------------------------------------------ | --------------------------------------------------- |
| `README.md` | GitHub front door  | What the repository is, where to start, structure, citation, support, license        | Long setup checklists or detailed website narrative |
| `TODO.md`   | Setup workbench    | Placeholder replacement, GitHub settings, validation, release tasks, unfinished work | Finished public explanations                        |
| `index.qmd` | Published homepage | Plain-language project story, data overview, reuse guidance, links to docs           | Repository maintenance commands                     |

For example, `Run npm run preview before publishing` belongs in `TODO.md` because it is an action. `Data are stored in data/ and analysis scripts are in analysis/` belongs in `README.md` because it helps GitHub visitors navigate. `This dataset documents municipal election results from 1900 to 1950` belongs in `index.qmd` because it helps public readers understand the project.

## Start Here

1. Create a new repository with [Use this template](https://github.com/new?template_name=open-research-data-template&template_owner=maehr).
2. Open the repository in GitHub Codespaces or clone it locally.
3. Install dependencies and start the Quarto preview.

```bash
npm install
npm run prepare
npm run preview
```

4. Work through [TODO.md](TODO.md) to customize placeholders, configure GitHub and Zenodo, validate the site, and prepare the first release.
5. Edit `index.qmd` as the public homepage for your project.
6. Finalize `README.template.md` and rename it to `README.md` when your project-specific README is ready.

## What Is Included

### Repository Structure

The layout follows the [Advanced Structure for Data Analysis](https://book.the-turing-way.org/project-design/pd-overview/project-repo/project-repo-advanced/) from _The Turing Way_.

| Path                  | Purpose                                              |
| --------------------- | ---------------------------------------------------- |
| `analysis/`           | Notebooks and analysis scripts                       |
| `assets/`             | Images and media                                     |
| `data/`               | Datasets and data documentation                      |
| `documentation/`      | Extended methods, workflows, dictionaries, or guides |
| `project-management/` | Planning, roles, communication, and reports          |
| `src/`                | Source code for collection, processing, or analysis  |
| `test/`               | Tests for code and data validation                   |

### Documentation And Publishing

- Quarto website with live preview through `npm run preview`.
- GitHub Pages workflow for publishing rendered documentation.
- Separate `README.md` for this template and `README.template.md` for downstream projects.
- Separate `CHANGELOG.md` for this template and `CHANGELOG.template.md` for downstream projects.

### Reproducibility And Validation

- Node.js tooling with npm and Prettier.
- Python environment management with `uv`, linting with Ruff, and type checking with ty.
- R environment management with `renv`, formatting with styler, and linting with lintr.
- Git hooks managed with [Prek](https://prek.j178.dev/).
- Conventional Commit enforcement with [Commitlint](https://commitlint.js.org/).

### Citation, Governance, And Release Support

- Citation metadata through `CITATION.cff` for the template and `CITATION.template.cff` for downstream projects.
- Separate data and code licenses: [CC BY 4.0](LICENSE-CCBY.md) for data and [AGPL 3.0](LICENSE-AGPL.md) for code.
- Conduct, security, issue templates, and contribution guidance.
- Release workflow support for Zenodo archiving, including a rendered site archive for tagged snapshots.

## Examples

The template approach has been used for public history, political science, digital humanities, teaching, and living publications.

| Example                                                                                 | What the website can do                                      | What the README should do                        | What TODO should track                |
| --------------------------------------------------------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------ | ------------------------------------- |
| [Stadt.Geschichte.Basel RDM](https://dokumentation.stadtgeschichtebasel.ch/)            | Guide readers through research data management documentation | Orient contributors to the repository            | Setup, validation, and release tasks  |
| [sgb-figures](https://dokumentation.stadtgeschichtebasel.ch/sgb-figures/)               | Explain reproducible figures and outputs                     | Point to scripts, data, and citation information | Checks and archive preparation        |
| [nordatlantisk-ft](http://mtwente.github.io/nordatlantisk-ft/)                          | Tell the workflow story for voting records                   | Explain where data and analysis live             | Technical setup and publication steps |
| [Decoding Inequality 2025](https://dhbern.github.io/decoding-inequality-2025/)          | Serve students as a course website                           | Help contributors navigate files                 | Course-site maintenance tasks         |
| [Non-discriminatory Metadata](https://maehr.github.io/diskriminierungsfreie-metadaten/) | Present a handbook and scholarly publication                 | Orient contributors and cite the project         | Ongoing publication maintenance       |

## Common Commands

| Task                      | Command                        |
| ------------------------- | ------------------------------ |
| Install dependencies      | `npm install`                  |
| Install Git hooks         | `npm run prepare`              |
| Preview documentation     | `npm run preview`              |
| Check formatting          | `npm run check`                |
| Format files              | `npm run format`               |
| Lint Python               | `uv run ruff check`            |
| Type-check Python         | `uv run ty check`              |
| Preview changelog entries | `npm run changelog:unreleased` |
| Generate changelog        | `npm run changelog`            |

Run the language-specific checks only when your project uses that language. See [TODO.md](TODO.md) for the full setup, validation, and release sequence.

## Template Roadmap

### v1.0.0 Release Readiness

- [x] Document agent-assisted setup, validation, and release preparation workflows.
- [x] Ship changelog guidance based on commit history.
- [x] Preserve rendered HTML documentation in tagged repository snapshots for Zenodo archival.
- [x] Record the template repository's Zenodo concept DOI and live citation metadata.
- [ ] Publish the first stable GitHub release for the repository.

### Post-v1.0.0

- [ ] Expand agent recipes for project-specific metadata, showcase updates, and support tasks.
- [ ] Add smoke tests for preview and template customization paths.
- [ ] Grow the showcase gallery with more agent-assisted research data projects.

## Academic Recognition

This approach was presented at the [Digital Humanities Tech Symposium (DHTech) 2025](https://dh-tech.github.io/2025/06/04/digital-humanities-tech-symposium-agenda/):

> Mähr, M., & Twente, M. (2025). _One Template to Rule Them All: Interactive Research Data Documentation with Quarto._ Digital Humanities Tech Symposium, NOVA University Lisbon. [https://maehr.github.io/one-template-to-rule-them-all/](https://maehr.github.io/one-template-to-rule-them-all/).

## Support

This project is maintained through public GitHub channels so answers stay visible and reusable.

| Need                               | Where                                                                                  |
| ---------------------------------- | -------------------------------------------------------------------------------------- |
| Bug, data, docs, or feature report | [GitHub Issues](https://github.com/maehr/open-research-data-template/issues)           |
| Security vulnerability             | [SECURITY.md](SECURITY.md)                                                             |
| General question                   | [GitHub Discussions](https://github.com/maehr/open-research-data-template/discussions) |

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidance and the code of conduct.

## Authors And Credits

- **Moritz Mähr** - Initial work - [maehr](https://github.com/maehr) - [ORCID](https://orcid.org/0000-0002-1367-1618)
- **Moritz Twente** - Enhancements - [mtwente](https://github.com/mtwente) - [ORCID](https://orcid.org/0009-0005-7187-9774)

See also the repository [contributors](https://github.com/maehr/open-research-data-template/graphs/contributors).

## License

Data are released under [CC BY 4.0](LICENSE-CCBY.md). Code is released under [AGPL 3.0](LICENSE-AGPL.md).
