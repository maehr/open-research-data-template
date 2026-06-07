# REPO_NAME

This repository contains SHORT_DESCRIPTION. The data in this repository is openly available to everyone and is intended to support reproducible research.

[![GitHub issues](https://img.shields.io/github/issues/USERNAME/REPO_NAME.svg)](https://github.com/USERNAME/REPO_NAME/issues)
[![GitHub forks](https://img.shields.io/github/forks/USERNAME/REPO_NAME.svg)](https://github.com/USERNAME/REPO_NAME/network)
[![GitHub stars](https://img.shields.io/github/stars/USERNAME/REPO_NAME.svg)](https://github.com/USERNAME/REPO_NAME/stargazers)
[![Code license](https://img.shields.io/github/license/USERNAME/REPO_NAME.svg)](https://github.com/USERNAME/REPO_NAME/blob/main/LICENSE-AGPL.md)
[![Data license](https://img.shields.io/github/license/USERNAME/REPO_NAME.svg)](https://github.com/USERNAME/REPO_NAME/blob/main/LICENSE-CCBY.md)
[![DOI](https://zenodo.org/badge/GITHUB_REPO_ID.svg)](https://zenodo.org/badge/latestdoi/ZENODO_RECORD)

## Where To Find What

This repository separates orientation, setup work, and public documentation so each file has one clear job. This makes the project easier for new users because they can tell from the filename whether they are reading stable guidance, unfinished setup tasks, or the published website.

| File        | Use it for                                                                                                 | Why                                                              |
| ----------- | ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| `README.md` | Repository summary, structure, citation, support, authors, and license                                     | GitHub visitors need a short front door.                         |
| `TODO.md`   | Setup checklist, placeholder replacement, GitHub and Zenodo tasks, validation, and release preparation     | Maintainers need one workbench for unfinished tasks.             |
| `index.qmd` | Public website homepage, project story, data overview, reuse guidance, and links to detailed documentation | Website readers need a clear explanation, not maintenance notes. |

For example, `Enable GitHub Pages` belongs in `TODO.md`, `data/ contains cleaned datasets` belongs in `README.md`, and a plain-language explanation of what this project documents belongs in `index.qmd`.

## Repository Structure

The structure of this repository follows the [Advanced Structure for Data Analysis](https://book.the-turing-way.org/project-design/pd-overview/project-repo/project-repo-advanced/) of _The Turing Way_ and is organized as follows:

- `analysis/`: scripts and notebooks used to analyze the data
- `assets/`: images, logos, etc. used in the README and other documentation
- `data/`: data files
- `documentation/`: extended documentation pages for the data and repository, such as methods, data dictionaries, workflows, or user guides
- `project-management/`: project management documents (e.g., meeting notes, project plans, etc.)
- `src/`: source code for the data (e.g., scripts used to collect or process the data)
- `test/`: tests for the data and source code
- `documentation.md`: the top-level documentation guide that explains the repository's overall documentation approach and links to supporting pages

## Data Description

- TODO Describe the data in this repository, including what it represents, how it was collected or obtained, any preprocessing or cleaning that was done, and any limitations or potential biases.
- TODO Data models, including field names, descriptions, and controlled values, should be clearly documented in a static document that is maintained with the data and is part of the products.
- TODO All rights and intellectual property issues should be clearly documented. Where possible, data and products should be released under open licenses (Creative Commons, GNU, BSD, MPL).

## Use

These data are openly available to everyone and can be used for any research or educational purpose. If you use this data in your research, please cite as specified in [CITATION.cff](CITATION.cff). The following citation formats are also available through _Zenodo_:

- [BibTeX](https://zenodo.org/record/ZENODO_RECORD/export/hx)
- [CSL](https://zenodo.org/record/ZENODO_RECORD/export/csl)
- [DataCite](https://zenodo.org/record/ZENODO_RECORD/export/dcite4)
- [Dublin Core](https://zenodo.org/record/ZENODO_RECORD/export/xd)
- [DCAT](https://zenodo.org/record/ZENODO_RECORD/export/dcat)
- [JSON](https://zenodo.org/record/ZENODO_RECORD/export/json)
- [JSON-LD](https://zenodo.org/record/ZENODO_RECORD/export/schemaorg_jsonld)
- [GeoJSON](https://zenodo.org/record/ZENODO_RECORD/export/geojson)
- [MARCXML](https://zenodo.org/record/ZENODO_RECORD/export/xm)

_Zenodo_ provides an [API (REST & OAI-PMH)](https://developers.zenodo.org/) to access the data. For example, the following command will return the metadata for the most recent version of the data

```bash
curl -i https://zenodo.org/api/records/ZENODO_RECORD
```

## Support

This project is maintained by [@USERNAME](https://github.com/USERNAME). Please understand that we can't provide individual support via email. We also believe that help is much more valuable when it's shared publicly, so more people can benefit from it.

| Type                                   | Platforms                                                               |
| -------------------------------------- | ----------------------------------------------------------------------- |
| 🚨 **Bug Reports**                     | [GitHub Issue Tracker](https://github.com/USERNAME/REPO_NAME/issues)    |
| 📊 **Report bad data**                 | [GitHub Issue Tracker](https://github.com/USERNAME/REPO_NAME/issues)    |
| 📚 **Docs Issue**                      | [GitHub Issue Tracker](https://github.com/USERNAME/REPO_NAME/issues)    |
| 🎁 **Feature Requests**                | [GitHub Issue Tracker](https://github.com/USERNAME/REPO_NAME/issues)    |
| 🛡 **Report a security vulnerability** | See [SECURITY.md](SECURITY.md)                                          |
| 💬 **General Questions**               | [GitHub Discussions](https://github.com/USERNAME/REPO_NAME/discussions) |

## Roadmap

No changes are currently planned.

## Contributing

All contributions to this repository are welcome! If you find errors or problems with the data, or if you want to add new data or features, please open an issue or pull request. Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## Versioning

We use [SemVer](http://semver.org/) for versioning. The available versions are listed in the [tags on this repository](https://github.com/USERNAME/REPO_NAME/tags).

## Authors and acknowledgment

- **FULLNAME** - _Initial work_ - [USERNAME](https://github.com/USERNAME)

See also the list of [contributors](https://github.com/USERNAME/REPO_NAME/graphs/contributors) who contributed to this project.

## License

The data in this repository is released under the Creative Commons Attribution 4.0 International (CC BY 4.0) License - see the [LICENSE-CCBY](LICENSE-CCBY.md) file for details. By using this data, you agree to give appropriate credit to the original author(s) and to indicate if any modifications have been made.

The code in this repository is released under the GNU Affero General Public License v3.0 - see the [LICENSE-AGPL](LICENSE-AGPL.md) file for details. By using this code, you agree to make any modifications available under the same license.
