# GitHub Template for FAIR and Open Research Data

Create a clear, citable, and reusable research data repository from this structured, ready-made template.

This framework gives research teams a practical structure for data, code, documentation, citation metadata, website publishing, and Zenodo archiving. It follows [FAIR](https://www.go-fair.org/fair-principles/) and open science principles and uses [Quarto](https://quarto.org/), [GitHub Pages](https://pages.github.com/), [Zenodo](https://zenodo.org/), and repeatable local checks.

[![GitHub issues](https://img.shields.io/github/issues/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/issues)
[![GitHub forks](https://img.shields.io/github/forks/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/network)
[![GitHub stars](https://img.shields.io/github/stars/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/stargazers)
[![Code license](https://img.shields.io/github/license/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/blob/main/LICENSE-AGPL.md)
[![Data license](https://img.shields.io/github/license/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/blob/main/LICENSE-CCBY.md)
[![DOI](https://zenodo.org/badge/614287827.svg)](https://doi.org/10.5281/zenodo.19111355)

> [!IMPORTANT]
> This `README.md` describes the **template repository itself**. If you created a new repository from this template, start with [TODO.md](TODO.md), then customize [README.template.md](README.template.md), [CITATION.template.cff](CITATION.template.cff), [CODE_OF_CONDUCT.template.md](CODE_OF_CONDUCT.template.md), [SECURITY.template.md](SECURITY.template.md), and [CHANGELOG.template.md](CHANGELOG.template.md) as directed there.

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

## What You Get

| Need             | Included support                                                        |
| ---------------- | ----------------------------------------------------------------------- |
| Data reuse       | Standard folders for data, analysis, source code, tests, and docs       |
| Public website   | Quarto site configured for GitHub Pages                                 |
| Citation         | `CITATION.cff`, Zenodo DOI workflow, and separate data/code licenses    |
| Project setup    | `TODO.md` checklist for placeholders, settings, validation, and release |
| Reproducibility  | npm, uv, renv, Prettier, Ruff, ty, styler, lintr, and Prek hooks        |
| Community health | Issue templates, contribution guide, code of conduct, and security file |

## Repository Layout

The layout follows the [Advanced Structure for Data Analysis](https://book.the-turing-way.org/project-design/pd-overview/project-repo/project-repo-advanced/) from _The Turing Way_:

| Path                  | Purpose                                              |
| --------------------- | ---------------------------------------------------- |
| `analysis/`           | Notebooks and analysis scripts                       |
| `assets/`             | Images and media                                     |
| `data/`               | Datasets and data documentation                      |
| `documentation/`      | Extended methods, workflows, dictionaries, or guides |
| `project-management/` | Planning, roles, communication, and reports          |
| `src/`                | Source code for collection, processing, or analysis  |
| `test/`               | Tests for code and data validation                   |

## Write Each Thing Once

| File        | Use it for                                                                |
| ----------- | ------------------------------------------------------------------------- |
| `README.md` | Short GitHub front door: purpose, folders, citation, support, license     |
| `TODO.md`   | Setup tasks: placeholders, GitHub settings, validation, release checklist |
| `index.qmd` | Public website: project story, data overview, reuse guidance              |

Long methods, data dictionaries, workflows, and decision records belong in `documentation/` or `project-management/`.

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

## Selected Use Cases

The template has been applied across domains including public history, political science, digital humanities, teaching infrastructures, and living publication projects, including [Stadt.Geschichte.Basel RDM](https://dokumentation.stadtgeschichtebasel.ch/), [sgb-figures](https://dokumentation.stadtgeschichtebasel.ch/sgb-figures/), [nordatlantisk-ft](http://mtwente.github.io/nordatlantisk-ft/), [Decoding Inequality 2025](https://dhbern.github.io/decoding-inequality-2025/), and [Non-discriminatory Metadata](https://maehr.github.io/diskriminierungsfreie-metadaten/).

## Academic Recognition

This approach was presented at the [Digital Humanities Tech Symposium (DHTech) 2025](https://dh-tech.github.io/2025/06/04/digital-humanities-tech-symposium-agenda/):

> Mähr, M., & Twente, M. (2025). _One Template to Rule Them All: Interactive Research Data Documentation with Quarto._ Digital Humanities Tech Symposium, NOVA University Lisbon. [https://maehr.github.io/one-template-to-rule-them-all/](https://maehr.github.io/one-template-to-rule-them-all/).

## Support

This project is maintained through public GitHub channels so answers stay visible and reusable.

| Type                                   | Platform                                                                               |
| -------------------------------------- | -------------------------------------------------------------------------------------- |
| 🚨 **Bug reports**                     | [GitHub Issues](https://github.com/maehr/open-research-data-template/issues)           |
| 📊 **Report bad data**                 | [GitHub Issues](https://github.com/maehr/open-research-data-template/issues)           |
| 📚 **Docs issues**                     | [GitHub Issues](https://github.com/maehr/open-research-data-template/issues)           |
| 🎁 **Feature requests**                | [GitHub Issues](https://github.com/maehr/open-research-data-template/issues)           |
| 🛡 **Report a security vulnerability** | See [SECURITY.md](SECURITY.md)                                                         |
| 💬 **General questions**               | [GitHub Discussions](https://github.com/maehr/open-research-data-template/discussions) |

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidance and the code of conduct.

## Authors And Credits

- **Moritz Mähr** - Initial work - [maehr](https://github.com/maehr) - [ORCID](https://orcid.org/0000-0002-1367-1618)
- **Moritz Twente** - Enhancements - [mtwente](https://github.com/mtwente) - [ORCID](https://orcid.org/0009-0005-7187-9774)

See also the repository [contributors](https://github.com/maehr/open-research-data-template/graphs/contributors).

## License

Data are released under [CC BY 4.0](LICENSE-CCBY.md). Code is released under [AGPL 3.0](LICENSE-AGPL.md).
