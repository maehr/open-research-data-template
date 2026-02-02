# Contributing

When contributing to this repository, please first discuss the change you wish to make via issue,
email, or any other method with the owners of this repository before making a change.

Please note we have a [code of conduct](CODE_OF_CONDUCT.md), please follow it in all your interactions with the project.

## Pull Request Process

1. Ensure any install or build dependencies are removed before the end of the layer when doing a
   build.
2. Update the README.md with details of changes to the interface, this includes new environment
   variables, exposed ports, useful file locations and container parameters.
3. Ensure all code is properly formatted and linted:
   - Run `npm run format` to format general files with Prettier
   - Run `npm run check` to verify formatting
   - Install Prek hooks with `npm run prepare`
   - Run `prek run --all-files` to run all hooks locally (or `npx @j178/prek run --all-files` if Prek isn't installed globally)
   - Run `uv run ruff format` to format Python code
   - Run `uv run ruff check` to lint Python code
   - Run `uv run ty check` to type check Python code (if applicable)
   - Run `styler::style_dir(".")` in R to format R code
   - Run `lintr::lint_dir(".")` in R to lint R code
4. Increase the version numbers in any examples files and the README.md to the new version that this
   Pull Request would represent. The versioning scheme we use is [SemVer](http://semver.org/).
5. You may merge the Pull Request in once you have the sign-off of two other developers, or if you
   do not have permission to do that, you may request the second reviewer to merge it for you.
