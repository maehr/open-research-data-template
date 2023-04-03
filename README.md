# GitHub template for FAIR and open data

This GitHub template is independent of the (research) data and its format. It follows the best practices for open data as outlined in [The Turing Way](https://the-turing-way.netlify.app/). It uses [GitHub Actions](https://docs.github.com/en/actions) to manage releases, issues, and pull requests, [GitHub Pages](https://pages.github.com/) for documentation, and [Zenodo](https://zenodo.org/) for long-term archiving.

[![GitHub issues](https://img.shields.io/github/issues/maehr/open-data-template.svg)](https://github.com/maehr/open-data-template/issues)
[![GitHub forks](https://img.shields.io/github/forks/maehr/open-data-template.svg)](https://github.com/maehr/open-data-template/network)
[![GitHub stars](https://img.shields.io/github/stars/maehr/open-data-template.svg)](https://github.com/maehr/open-data-template/stargazers)
[![GitHub license](https://img.shields.io/github/license/maehr/open-data-template.svg)](https://github.com/maehr/open-data-template/blob/main/LICENSE.md)

## Why use a template (even for small datasets)?

- Share your [open data](#open-data) with others
- Write better [documentation](#documentation) for yourself and the community
- Write more [consistent](#consistency) code and encourage collaboration
- Increase [security](#security)
- Follow accepted [ethics](#ethics)

## How this template helps you

## Open data

- Citeable via [CITATION.cff](CITATION.cff) and [DOI](https://www.doi.org/)
- Automatic long-term archiving via [Zenodo](https://zenodo.org/)
- Licensed under a non-restrictive [CC BY 4.0 license](LICENSE.md) according to [The Turing Way](https://the-turing-way.netlify.app/reproducible-research/rdm/rdm-sharing.html#step-3-choose-a-licence-and-link-to-your-paper-and-code)
- Templates for reporting data issues using a [custom template](.github/ISSUE_TEMPLATE/data_issue_report.md)

### Documentation

- [README.md](README.md) according to [www.makeareadme.com](https://www.makeareadme.com/) and [The Turing Way](https://the-turing-way.netlify.app/project-design/project-repo/project-repo-readme.html)
- [CHANGELOG.md](CHANGELOG.md) according to [keepachangelog.com](https://keepachangelog.com/)
- Automated [CHANGELOG.md](CHANGELOG.md) via [git-cliff](https://github.com/orhun/git-cliff)
- [package.json](package.json) via [npm docs](https://docs.npmjs.com/cli/v7/configuring-npm/package-json)
- Accessible documentation via [gh-pages](https://help.github.com/en/articles/configuring-a-publishing-source-for-github-pages)

### Consistency

- Consistent formatting via [Prettier](https://prettier.io/)
- Consistent commit messages according to [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) via [husky](https://github.com/typicode/husky)
- Consistent versioning via [Semantic Versioning](https://semver.org/spec/v2.0.0.html)
- Consistent [fork and pull](https://gist.github.com/Chaser324/ce0505fbed06b947d962) workflow via [GitHub branch protection](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/managing-a-branch-protection-rule)
- Consistent issues via [issue templates](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository)
- Consistent pull request labels via [labeler](https://github.com/actions/labeler)
- Consistent file and folder naming conventions via [The Turing Way](https://the-turing-way.netlify.app/reproducible-research/rdm/rdm-storage.html#file-naming-conventions)

### Security

- [SECURITY.md](SECURITY.md) per [GitHub](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository)
- [GitHub Security Alerts](https://github.blog/2017-11-16-introducing-security-alerts-on-github/)
- Integrity via [GitHub branch protection](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/managing-a-branch-protection-rule)

### Ethics

- [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) per the [Contributor Covenant](https://www.contributor-covenant.org/)
- Friendly initial interactions via [Greetings](https://github.com/actions/starter-workflows/blob/main/automation/greetings.yml)

## Installation

To initialize the template, [generate](https://github.com/maehr/open-data-template/generate) a new project, [clone](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository) the repository to your local machine and follow this guide.

1. Install [Node.js](https://nodejs.org/en/) and run the following commands in the root directory of the repository:

```bash
npm install
npm run prepare
```

2. Complete the following checklist of tasks to customize the template for your project:

- [ ] enable [GitHub security alerts](https://github.blog/2017-11-16-introducing-security-alerts-on-github/)
- [ ] [protect](https://help.github.com/en/articles/configuring-protected-branches) the main branch to enforce a [fork and pull](https://gist.github.com/Chaser324/ce0505fbed06b947d962) workflow
- [ ] search and replace `FULLNAME`, `USERNAME`, `REPO_NAME`, `SHORT_DESCRIPTION` `[INSERT CONTACT METHOD]` in [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md), [package.json](package.json), [README.md](README.md), [SECURITY.md](SECURITY.md)
- [ ] change `CITATION.CFF` according to [citation-file-format.github.io](https://citation-file-format.github.io/)
- [ ] setup the [Zenodo integration](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content)
- [ ] add `ZENODO_RECORD` to [README.md](README.md)
- [ ] add favicons to `./`, e.g. via [favicon.io](https://favicon.io/)
- [ ] search for `TODO` in the project (mostly documentation) and fix it
- [ ] delete [README.md](README.md)
- [ ] rename [README.template.md](README.template.md) to [README.md](README.md)
- [ ] run `npm run format` to format all files
- [ ] run `npm run commit` to commit all changes
- [ ] run `npm run changelog` and include the output in [CHANGELOG.md](CHANGELOG.md)
- [ ] enable [gh-pages](https://help.github.com/en/articles/configuring-a-publishing-source-for-github-pages)

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

## Support

This project is maintained by [@maehr](https://github.com/maehr). Please understand that we can't provide individual support via email. We also believe that help is much more valuable when it's shared publicly, so more people can benefit from it.

| Type                         | Platforms                                                                  |
| ---------------------------- | -------------------------------------------------------------------------- |
| 🚨 **Bug Reports**           | [GitHub Issue Tracker](https://github.com/maehr/open-data-template/issues) |
| 🎁 **Feature Requests**      | [GitHub Issue Tracker](https://github.com/maehr/open-data-template/issues) |
| 🛡 **Report a vulnerability** | See [SECURITY.md](SECURITY.md)                                             |

## Roadmap

There are currently no changes planned.

## Contributing

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## Authors and credits

- **Moritz Mähr** - _Initial work_ - [maehr](https://github.com/maehr)

See also the list of [contributors](https://github.com/maehr/open-data-template/graphs/contributors) who contributed to this project.

## License

The data in this repository is released under the Creative Commons Attribution 4.0 International (CC BY 4.0) License - see the [LICENSE.md](LICENSE.md) file for details. The code in this repository is released under the GNU Affero General Public License v3.0 - see the [gnu.org](https://www.gnu.org/licenses/agpl-3.0.html) file for details.
