# GitHub template for FAIR and open research data

This GitHub template is independent of the (research) data and its format. It follows the best practices for open research data as outlined in [The Turing Way](https://the-turing-way.netlify.app/). It uses [GitHub Actions](https://docs.github.com/en/actions) to manage releases, issues, and pull requests, [GitHub Pages](https://pages.github.com/) for documentation, and [Zenodo](https://zenodo.org/) for long-term archiving.

[![GitHub issues](https://img.shields.io/github/issues/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/issues)
[![GitHub forks](https://img.shields.io/github/forks/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/network)
[![GitHub stars](https://img.shields.io/github/stars/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/stargazers)
[![Code license](https://img.shields.io/github/license/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/blob/main/LICENSE-AGPL.md)
[![Data license](https://img.shields.io/github/license/maehr/open-research-data-template.svg)](https://github.com/maehr/open-research-data-template/blob/main/LICENSE-CCBY.md)
[![DOI](https://zenodo.org/badge/614287827.svg)](https://zenodo.org/badge/latestdoi/ZENODO_RECORD)

## Why use a template (even for small datasets)?

- Share your [open research data](#open-research-data) with others
- Write better [documentation](#documentation) for yourself and the community
- Write more [consistent](#consistency) code and encourage collaboration
- Increase [security](#security)
- Follow accepted [ethics](#ethics)

## How this template helps you

### Open research data

- Citeable via [DOI](https://www.doi.org/) (and [CITATION.cff](https://citation-file-format.github.io/))
- Automatic long-term archiving via [Zenodo](https://zenodo.org/)
- Licensed under a non-restrictive [AGPL 3.0](LICENSE-AGPL.md) and [CC BY 4.0](LICENSE-CCBY.md) license according to [The Turing Way](https://the-turing-way.netlify.app/reproducible-research/rdm/rdm-sharing.html#step-3-choose-a-licence-and-link-to-your-paper-and-code)
- Templates for reporting data issues using a custom template `github/ISSUE_TEMPLATE/data_issue_report.yml`

### Documentation

- `README.md` according to [www.makeareadme.com](https://www.makeareadme.com/) and [The Turing Way](https://the-turing-way.netlify.app/project-design/project-repo/project-repo-readme.html)
- `CHANGELOG.md` according to [keepachangelog.com](https://keepachangelog.com/)
- Automated [CHANGELOG.md](CHANGELOG.md) via [git-cliff](https://github.com/orhun/git-cliff)
- `package.json` via [npm docs](https://docs.npmjs.com/cli/v7/configuring-npm/package-json)
- Accessible documentation via [gh-pages](https://help.github.com/en/articles/configuring-a-publishing-source-for-github-pages) and [Quarto](https://quarto.org/)

### Consistency

- Consistent formatting via [Prettier](https://prettier.io/)
- Consistent commit messages according to [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) via [husky](https://github.com/typicode/husky)
- Consistent versioning via [Semantic Versioning](https://semver.org/spec/v2.0.0.html)
- Consistent [fork and pull](https://gist.github.com/Chaser324/ce0505fbed06b947d962) workflow via [GitHub branch protection](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/managing-a-branch-protection-rule)
- Consistent issues via [issue templates](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository)
- Consistent file and folder naming conventions via [The Turing Way](https://the-turing-way.netlify.app/reproducible-research/rdm/rdm-storage.html#file-naming-conventions)

### Security

- `SECURITY.md` per [GitHub](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository)
- [GitHub Security Alerts](https://github.blog/2017-11-16-introducing-security-alerts-on-github/)
- Integrity via [GitHub branch protection](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/managing-a-branch-protection-rule)

### Ethics

- `CODE_OF_CONDUCT.md` per the [Contributor Covenant](https://www.contributor-covenant.org/)
- Friendly initial interactions via [Greetings](https://github.com/actions/starter-workflows/blob/main/automation/greetings.yml)

## Use cases and examples

See how the **Open Research Data Template** is being used across different domains and use cases:

| Project                      | Preview                                                                                                                                                                                                                                                            | Use Case                                                                     |
| ---------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------- |
| Stadt.Geschichte.Basel — RDM | <a href="https://dokumentation.stadtgeschichtebasel.ch/"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/dokumentation_stadtgeschichtebasel_ch.png" width="300" alt="Stadt.Geschichte.Basel RDM site screenshot"></a>                 | Documentation platform for research data management and public history.      |
| sgb-figures                  | <a href="https://dokumentation.stadtgeschichtebasel.ch/sgb-figures/"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/dokumentation_stadtgeschichtebasel_ch_sgb_figures.png" width="300" alt="sgb-figures site screenshot"></a>        | Reproducible figures with code, data, and workflows linked to SGB.           |
| nordatlantisk-ft             | <a href="http://mtwente.github.io/nordatlantisk-ft"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/nordatlantisk_ft_report.png" width="300" alt="nordatlantisk-ft site screenshot"></a>                                              | Scraped parliamentary voting data with automated updates and visualizations. |
| maxvogt-analysis             | <a href="https://mtwente.github.io/maxvogt-analysis"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/maxvogt_analysis.png" width="300" alt="maxvogt-analysis site screenshot"></a>                                                    | Spatial design history with geodata, workflow diagrams, and analysis code.   |
| Modelling Marti              | <a href="https://mtwente.github.io/modelling-marti"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/modelling_marti.png" width="300" alt="Modelling Marti site screenshot"></a>                                                       | Interactive publication with topic modelling, maps, and narrative context.   |
| DigiHistCH24                 | <a href="https://digihistch24.github.io/"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/digihistch24.png" width="300" alt="DigiHistCH24 site screenshot"></a>                                                                       | Conference book of abstracts as a citable, interactive publication.          |
| DH Bern                      | <a href="https://dhbern.github.io/"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/dhbern.png" width="300" alt="DH Bern site screenshot"></a>                                                                                        | Department portal aggregating projects, events, and blog posts.              |
| Decoding Inequality 2025     | <a href="https://dhbern.github.io/decoding-inequality-2025/"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/decoding_inequality_2025.png" width="300" alt="Decoding Inequality 2025 site screenshot"></a>                            | Course website with lecture notes, datasets, and student contributions.      |
| Non-discriminatory Metadata  | <a href="https://maehr.github.io/diskriminierungsfreie-metadaten/"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/diskriminierungsfreie_metadaten.png" width="300" alt="Non-discriminatory Metadata site screenshot"></a>            | Living handbook on inclusive metadata, with continuous community input.      |
| One Template — Talk          | <a href="https://maehr.github.io/one-template-to-rule-them-all/"><img src="https://maehr.github.io/one-template-to-rule-them-all/paper/images/one_template_to_rule_them_all.png" width="300" alt="One Template to Rule Them All presentation site screenshot"></a> | Presentation site and demo of the template's features in action.             |

For a detailed discussion of the template’s rationale, design, and workflows, see the accompanying paper: <https://maehr.github.io/one-template-to-rule-them-all/paper/>

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
- **Moritz Twente** - _Enhancements_ - [moritztwente](https://github.com/mtwente)

See also the list of [contributors](https://github.com/maehr/open-research-data-template/graphs/contributors) who contributed to this project.

## License

The data in this repository is released under the Creative Commons Attribution 4.0 International (CC BY 4.0) License - see the [LICENSE-CCBY](LICENSE-CCBY.md) file for details. By using this data, you agree to give appropriate credit to the original author(s) and to indicate if any modifications have been made.

The code in this repository is released under the GNU Affero General Public License v3.0 - see the [LICENSE-AGPL](LICENSE-AGPL.md) file for details. By using this code, you agree to make any modifications available under the same license.
