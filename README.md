# GitHub Template for FAIR and Open Research Data

**Transforming research documentation from static afterthought into living, executable environments.**

This template provides an infrastructure for documenting, publishing, and archiving research data in line with the principles of [FAIR](https://www.go-fair.org/fair-principles/) and open science. It is independent of data type or format and implements best practices as outlined in [The Turing Way](https://the-turing-way.netlify.app/). Core components include automated release management, integrated archiving with [Zenodo](https://zenodo.org/), structured documentation via [Quarto](https://quarto.org/), and long-term accessibility through [GitHub Pages](https://pages.github.com/).

[![GitHub issues](https://img.shields.io/github/issues/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/issues)
[![GitHub forks](https://img.shields.io/github/forks/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/network)
[![GitHub stars](https://img.shields.io/github/stars/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/stargazers)
[![Code license](https://img.shields.io/github/license/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/blob/main/LICENSE-AGPL.md)
[![Data license](https://img.shields.io/github/license/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/blob/main/LICENSE-CCBY.md)

<!-- [![DOI](https://zenodo.org/badge/614287827.svg)](https://zenodo.org/badge/latestdoi/ZENODO_RECORD) -->

## 🤝 Academic Recognition

This approach was presented at the [Digital Humanities Tech Symposium (DHTech) 2025](https://dh-tech.github.io/2025/06/04/digital-humanities-tech-symposium-agenda/) and exemplifies how reusable templates can address persistent challenges in research data management.

> Mähr, M., & Twente, M. (2025). _One Template to Rule Them All: Interactive Research Data Documentation with Quarto._ Digital Humanities Tech Symposium, NOVA University Lisbon. [https://maehr.github.io/one-template-to-rule-them-all/](https://maehr.github.io/one-template-to-rule-them-all/).

## Why use a template (even for small datasets)?

Conventional data publication as static supplementary files offers limited reproducibility and reusability. This template extends such practices by providing:

- 📊 **Executable narratives** that embed code outputs directly into documentation
- 🚀 **Automated deployment and testing** that reduces technical overhead
- 🏛️ **Integrated archiving with DOI** through seamless Zenodo integration
- 📈 **Scalability and consistency** across diverse project types and domains
- 🔒 **Enhanced security** with automated vulnerability monitoring
- 🤝 **Community standards** following accepted ethics and collaboration practices

## Features

### Open Research Data

- Citable via [DOI](https://www.doi.org/) and [CITATION.cff](https://citation-file-format.github.io/)
- Automatic long-term archiving with [Zenodo](https://zenodo.org/)
- Licensed under [AGPL 3.0](https://www.gnu.org/licenses/agpl-3.0.html) and [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed) according to [The Turing Way](https://the-turing-way.netlify.app/reproducible-research/rdm/rdm-sharing.html#step-3-choose-a-licence-and-link-to-your-paper-and-code)
- Template for reporting data issues via `github/ISSUE_TEMPLATE/data_issue_report.yml`

### Documentation

- `README.md` following [www.makeareadme.com](https://www.makeareadme.com/) and [The Turing Way](https://book.the-turing-way.org/project-design/pd-overview/project-repo/project-repo-readme)
- `CHANGELOG.md` following [keepachangelog.com](https://keepachangelog.com/)
- Automated changelog generation with [git-cliff](https://github.com/orhun/git-cliff)
- Machine-readable project metadata in `package.json` with [npm](https://docs.npmjs.com/cli/v7/configuring-npm/package-json)
- Accessible documentation with [GitHub Pages](https://docs.github.com/en/pages) and [Quarto](https://quarto.org/)

### Consistency

- Code formatting with [Prettier](https://prettier.io/)
- Commit messages following [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) enforced via [husky](https://github.com/typicode/husky)
- Versioning following [Semantic Versioning](https://semver.org/spec/v2.0.0.html)
- Workflow based on [fork and pull](https://gist.github.com/Chaser324/ce0505fbed06b947d962) with [GitHub branch protection](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/managing-a-branch-protection-rule)
- Issue tracking via [issue templates](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository)
- File and folder naming conventions following [The Turing Way](https://the-turing-way.netlify.app/reproducible-research/rdm/rdm-storage.html#file-naming-conventions)

### Security

- `SECURITY.md` following [GitHub guidelines](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository)
- Vulnerability monitoring with [GitHub Security Alerts](https://github.blog/2017-11-16-introducing-security-alerts-on-github/)
- Repository integrity enforced via [GitHub branch protection](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/managing-a-branch-protection-rule)

### Ethics

- `CODE_OF_CONDUCT.md` following the [Contributor Covenant](https://www.contributor-covenant.org/)
- Supportive first interactions via [Greetings](https://github.com/actions/starter-workflows/blob/main/automation/greetings.yml)

## Selected Use Cases

The template has been applied across domains including public history, political science, digital humanities, and teaching infrastructures.

### 🔬 Research Data Documentation

| Project                                                                                                                                                                            | Preview                                                                                                                                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [**Stadt.Geschichte.Basel RDM**](https://dokumentation.stadtgeschichtebasel.ch/)<br>Project documentation platform combining research data management with public history outreach | <a href="https://dokumentation.stadtgeschichtebasel.ch/"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/dokumentation_stadtgeschichtebasel_ch.png" width="540px" alt=""></a>                         |
| [**sgb-figures**](https://dokumentation.stadtgeschichtebasel.ch/sgb-figures/)<br>Reproducible code and annotated data for publication-ready visualisations of research data        | <a href="https://dokumentation.stadtgeschichtebasel.ch/sgb-figures/"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/dokumentation_stadtgeschichtebasel_ch_sgb_figures.png" width="540px" alt=""></a> |

### 📊 Reproducible Research Workflows

| Project                                                                                                                                                                 | Preview                                                                                                                                                                                 |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [**nordatlantisk-ft**](http://mtwente.github.io/nordatlantisk-ft/)<br>Voting records from the parliament of Denmark with complete data scraping and analysis pipeline   | <a href="http://mtwente.github.io/nordatlantisk-ft"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/nordatlantisk_ft_report.png" width="540px" alt=""></a> |
| [**maxvogt-analysis**](https://mtwente.github.io/maxvogt-analysis/)<br>Multi-step data compilation workflow documentation                                               | <a href="https://mtwente.github.io/maxvogt-analysis"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/maxvogt_analysis.png" width="540px" alt=""></a>       |
| [**Modelling Marti**](https://mtwente.github.io/modelling-marti)<br>Topic modeling project with interactive visualizations and multimedia content as narrative elements | <a href="https://mtwente.github.io/modelling-marti"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/modelling_marti.png" width="540px" alt=""></a>         |

### 🎓 Academic Events & Teaching

| Project                                                                                                                                            | Preview                                                                                                                                                                                           |
| -------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [**Digital History Switzerland 2024**](https://digihistch24.github.io/)<br>Conference website with program, abstracts, and participant information | <a href="https://digihistch24.github.io/"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/digihistch24.png" width="540px" alt=""></a>                                |
| [**Digital Humanities Bern**](https://dhbern.github.io/)<br>Department hub featuring news, events, and course information                          | <a href="https://dhbern.github.io/"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/dhbern.png" width="540px" alt=""></a>                                            |
| [**Decoding Inequality 2025**](https://dhbern.github.io/decoding-inequality-2025/)<br>University course website with syllabus and materials        | <a href="https://dhbern.github.io/decoding-inequality-2025/"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/decoding_inequality_2025.png" width="540px" alt=""></a> |

### 📚 Living Publications & Handbooks

| Project                                                                                                                                                                              | Preview                                                                                                                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [**Non-discriminatory Metadata**](https://maehr.github.io/diskriminierungsfreie-metadaten/)<br>Comprehensive handbook that functions as both documentation and scholarly publication | <a href="https://maehr.github.io/diskriminierungsfreie-metadaten/"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/diskriminierungsfreie_metadaten.png" width="540px" alt=""></a> |
| [**One Template to Rule Them All**](https://maehr.github.io/one-template-to-rule-them-all/)<br>This repository's own presentation site, demonstrating meta-application               | <a href="https://maehr.github.io/one-template-to-rule-them-all/"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/one_template_to_rule_them_all.png" width="540px" alt=""></a>     |

## Installation

We recommend using **[GitHub Codespaces](https://github.com/features/codespaces)** for a reproducible setup.

## Getting Started

### For Most Users: Reproducible Setup with GitHub Codespaces

1. **[Use this template](https://github.com/new?template_name=open-research-data-template&template_owner=maehr)** for your project in a new repository on your GitHub account.

   <div align="center">
     <img src=".github/docs/assets/img_use.png" alt="Use the repository" style="width: 540px; margin: 1em 0;" />
   </div>

2. Click the green **`<> Code`** button at the top right of this repository.

3. Select the **“Codespaces”** tab and click **“Create codespace on `main`”**.
   GitHub will now build a container that includes:
   - ✅ Node.js (via `npm`)
   - ✅ Python with `uv`
   - ✅ R with `renv`
   - ✅ Quarto

   <div align="center">
     <img src=".github/docs/assets/img_codespace.png" alt="Create Codespace" style="width: 540px; margin: 1em 0;" />
   </div>

4. Once the Codespace is ready, open a terminal and preview the documentation:

   ```bash
   uv run quarto preview
   ```

   <div align="center">
     <img src=".github/docs/assets/img_terminal.png" alt="Terminal window showing command" style="width: 540px; margin: 1em 0;" />
   </div>

> **Note:** All dependencies (Node.js, Python, R, Quarto) are pre-installed in the Codespace.

<details>
<summary>👩‍💻 <strong>Advanced</strong> Local Installation</summary>

#### Prerequisites

- [Node.js](https://nodejs.org/en/download/)
- [R](https://cran.r-project.org/) and Rtools (on Windows)
- [uv (Python manager)](https://github.com/astral-sh/uv#installation)
- [Quarto](https://quarto.org/docs/get-started/)

> _Note: `uv` installs and manages the correct Python version automatically._

#### Local Setup Steps

```bash
# 1. Install Node.js dependencies
npm install
npm run prepare

# 2. Setup Python environment
uv sync

# 3. Setup R environment
Rscript -e 'install.packages("renv"); renv::restore()'

# 4. Preview documentation
uv run quarto preview
```

</details>

## Project Setup Checklist (for all users)

After creating your project from this template (either via Codespaces or local setup), complete the following steps to customize and finalize your project:

- [ ] **Enable GitHub Security Alerts**: Go to your repository's "Security" tab on GitHub and enable security alerts.
- [ ] **Protect the Main Branch**: In your repository settings on GitHub (under "Branches"), protect your `main` branch.
- [ ] **Update Project Details**: Replace placeholders like `FULLNAME`, `USERNAME`, `REPO_NAME`, `SHORT_DESCRIPTION`, and `[INSERT CONTACT METHOD]` in `.github/ISSUE_TEMPLATE/config.yml`, `_brand.yml`, `CODE_OF_CONDUCT.md`, `package.json`, `README.template.md`, and `SECURITY.md`.
- [ ] **Set Up Zenodo Integration**: Follow the [Zenodo guide](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content) to connect your repository to Zenodo for long-term archiving and to get a DOI.
- [ ] **Set Up Zenodo DOI Badge**: Replace `GITHUB_REPO_ID` with `id`from `https://api.github.com/repos/USERNAME/REPO_NAME`. This will automatically update with your Zenodo DOI once you make a release.
- [ ] **Add Zenodo DOI to README**: Once you have your Zenodo DOI, add it to the `README.md` file by replacing `ZENODO_RECORD`.
- [ ] **Add Favicons**: Add favicons to the root directory (see [favicon.io](https://favicon.io/)).
- [ ] **Address TODOs**: Search for `TODO` comments throughout the project files and complete the tasks.
- [ ] **Finalize README**: Delete this `README.md` and rename `README.template.md` to `README.md`.
- [ ] **Format Files**: Run `npm run format` to ensure all files are formatted.
- [ ] **Commit Changes**: Run `npm run commit` to save your changes with a standardized commit message.
- [ ] **Generate Changelog**: Run `npm run changelog` and copy the output into the `CHANGELOG.md` file.
- [ ] **Customize Documentation**: Customize your documentation using [Quarto's features](https://quarto.org/docs/websites/#workflow).
- [ ] **Enable GitHub Pages**: In your repository settings on GitHub (under "Pages"), configure GitHub Pages to publish from the `gh-pages` branch.
- [ ] **Publish Documentation**: Run `quarto publish gh-pages` to publish your documentation website.

**Optional:**

- [ ] **Add Citation File**: Create a `CITATION.CFF` file (see [citation-file-format.github.io](https://citation-file-format.github.io/)).
- [ ] **Add Zenodo Metadata File**: Create a `.zenodo.json` file for Zenodo metadata ([Zenodo developer docs](https://developers.zenodo.org/?python#add-metadata-to-your-github-repository-release)).

## Use

Check that all files are properly formatted.

```bash
npm run check
```

Format all files.

```bash
npm run format
```

Run the wizard to write meaningful commit messages.

```bash
npm run commit
```

Run the wizard to create a CHANGELOG.md.

```bash
npm run changelog
```

Preview the documentation.

```bash
quarto preview
```

## Support

This project is maintained by [@maehr](https://github.com/maehr). Please understand that we can't provide individual support via email. We also believe that help is much more valuable when it's shared publicly, so more people can benefit from it.

| Type                                   | Platforms                                                                              |
| -------------------------------------- | -------------------------------------------------------------------------------------- |
| 🚨 **Bug Reports**                     | [GitHub Issue Tracker](https://github.com/maehr/open-research-data-template/issues)    |
| 📊 **Report bad data**                 | [GitHub Issue Tracker](https://github.com/maehr/open-research-data-template/issues)    |
| 📚 **Docs Issue**                      | [GitHub Issue Tracker](https://github.com/maehr/open-research-data-template/issues)    |
| 🎁 **Feature Requests**                | [GitHub Issue Tracker](https://github.com/maehr/open-research-data-template/issues)    |
| 🛡 **Report a security vulnerability** | See [SECURITY.md](SECURITY.md)                                                         |
| 💬 **General Questions**               | [GitHub Discussions](https://github.com/maehr/open-research-data-template/discussions) |

## Roadmap

There are currently no changes planned.

## Contributing

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## Authors and credits

- **Moritz Mähr** - _Initial work_ - [maehr](https://github.com/maehr)
- **Moritz Twente** - _Enhancements_ - [mtwente](https://github.com/mtwente)

See also the list of [contributors](https://github.com/maehr/open-research-data-template/graphs/contributors) who contributed to this project.

## License

The data in this repository is released under the Creative Commons Attribution 4.0 International (CC BY 4.0) License - see the [LICENSE-CCBY](LICENSE-CCBY.md) file for details. By using this data, you agree to give appropriate credit to the original author(s) and to indicate if any modifications have been made.

The code in this repository is released under the GNU Affero General Public License v3.0 - see the [LICENSE-AGPL](LICENSE-AGPL.md) file for details. By using this code, you agree to make any modifications available under the same license.
