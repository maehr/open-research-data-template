# Contributing

Thank you for your interest in contributing to the Open Research Data Template! This project aims to make research data publication more accessible and follows FAIR principles. We welcome contributions from the research community.

When contributing to this repository, please first discuss the change you wish to make via [GitHub Issues](https://github.com/maehr/open-research-data-template/issues) or [GitHub Discussions](https://github.com/maehr/open-research-data-template/discussions) with the maintainers before making significant changes.

Please note we have a [Code of Conduct](CODE_OF_CONDUCT.md), please follow it in all your interactions with the project.

## Types of Contributions

### 🐛 Bug Reports

- Use the bug report template in [GitHub Issues](https://github.com/maehr/open-research-data-template/issues/new/choose)
- Include clear reproduction steps and expected vs. actual behavior
- Test with the latest version when possible

### 💡 Feature Requests

- Use the feature request template in [GitHub Issues](https://github.com/maehr/open-research-data-template/issues/new/choose)
- Describe the use case and how it would benefit the research community
- Consider if the feature aligns with FAIR data principles

### 📚 Documentation Improvements

- Fix typos, clarify instructions, or add missing information
- Update examples to reflect current best practices
- Improve accessibility and internationalization

### 🔧 Code Contributions

- Template improvements and new features
- GitHub Actions workflow enhancements
- Quarto configuration optimizations

## Pull Request Process

1. **Fork and Clone**: Fork the repository and clone your fork locally
2. **Create a Feature Branch**: `git checkout -b feature/your-feature-name`
3. **Development Setup**:
   ```bash
   npm install
   npm run format  # Format your code
   npm run check   # Check code quality
   ```
4. **Make Changes**: Follow existing code style and patterns
5. **Test Your Changes**: Ensure documentation builds correctly with `uv run quarto preview`
6. **Update Documentation**: Update README.md or other docs if interface changes
7. **Follow Commit Conventions**: Use [Conventional Commits](https://www.conventionalcommits.org/) format
8. **Submit Pull Request**:
   - Use the pull request template
   - Link related issues
   - Include screenshots for UI changes
   - Request review from maintainers

### Code Quality Requirements

- All files must pass `npm run format` and `npm run check`
- Follow existing naming conventions and project structure
- Include appropriate comments for complex logic
- Update relevant documentation sections

### Versioning

This project uses [Semantic Versioning](http://semver.org/). The maintainers will handle version bumps based on the type of changes in each release.

## Development Guidelines

### File Organization

- Follow [The Turing Way](https://the-turing-way.netlify.app/) project structure recommendations
- Keep template files generic and customizable
- Use clear, descriptive file and folder names

### Documentation Standards

- Write clear, actionable instructions
- Include examples where helpful
- Consider different skill levels (beginner to advanced)
- Follow accessibility guidelines

### GitHub Actions

- Test workflow changes thoroughly
- Ensure backwards compatibility when possible
- Document any new workflow requirements

## Community Guidelines

- Be respectful and inclusive in all interactions
- Help newcomers understand the project and research data best practices
- Share knowledge and experience to benefit the broader research community
- Follow the [Code of Conduct](CODE_OF_CONDUCT.md) in all project spaces

## Getting Help

- **Questions**: Use [GitHub Discussions](https://github.com/maehr/open-research-data-template/discussions)
- **Issues**: Report bugs via [GitHub Issues](https://github.com/maehr/open-research-data-template/issues)
- **Documentation**: Check the [README](README.md) and project wiki

## Recognition

Contributors are recognized in several ways:

- Listed in [AUTHORS](README.md#authors-and-credits) section
- Mentioned in release notes for significant contributions
- Eligible for co-authorship on related academic publications (when appropriate)

Thank you for helping make research data more open and accessible! 🎉
