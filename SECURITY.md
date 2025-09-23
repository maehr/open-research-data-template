# Security Policy

## Supported Versions

We provide security updates for the following versions of the Open Research Data Template:

| Version | Supported          | Notes                                    |
| ------- | ------------------ | ---------------------------------------- |
| Latest  | :white_check_mark: | Always use the latest template version   |
| < 1.0   | :warning:          | Pre-release versions, update recommended |

Since this is a template repository, users should regularly sync with the latest version to receive security updates and improvements.

## Reporting a Vulnerability

We take security seriously and appreciate responsible disclosure of security vulnerabilities.

### For Template-Related Security Issues

If you discover a security vulnerability in the template itself (GitHub Actions workflows, dependencies, or configuration), please report it by:

1. **Email**: Send details to [moritz.maehr@gmail.com](mailto:moritz.maehr@gmail.com)
2. **GitHub Security**: Use [GitHub Security Advisories](https://github.com/maehr/open-research-data-template/security/advisories/new) for sensitive issues

### What to Include

When reporting a vulnerability, please include:

- Description of the vulnerability and its potential impact
- Steps to reproduce the issue
- Affected components (GitHub Actions, dependencies, etc.)
- Suggested mitigation if known
- Your contact information for follow-up

### Response Timeline

- **Initial Response**: Within 48 hours of report
- **Status Update**: Weekly updates on investigation progress
- **Resolution Timeline**: 90 days maximum from initial report
- **Disclosure**: Coordinated disclosure after fix is available

### For Projects Using the Template

**Important**: Security issues in projects created from this template are the responsibility of the project maintainers, not this template repository.

If your research data repository has security concerns:

- Review your repository's access controls
- Ensure sensitive data is not committed to Git
- Use environment variables for API keys and credentials
- Follow your institution's data security policies
- Consider data classification requirements

## Security Best Practices

When using this template for research data:

### Data Security

- **Never commit sensitive data** directly to Git repositories
- Use `.gitignore` to exclude sensitive files
- Consider using Git LFS for large data files
- Review data before making repositories public

### Access Control

- Configure appropriate repository permissions
- Use branch protection rules
- Enable GitHub security alerts
- Review collaborator access regularly

### Dependency Management

- Keep dependencies updated using Dependabot
- Review security advisories for used packages
- Use package managers' security features
- Audit npm/pip packages regularly

### GitHub Actions Security

- Use pinned action versions (not tags like `@main`)
- Limit workflow permissions with `permissions:` blocks
- Avoid exposing secrets in logs
- Review third-party actions before use

### Research Data Compliance

- Follow your institution's data governance policies
- Ensure compliance with GDPR, HIPAA, or other regulations
- Document data handling procedures
- Consider data retention and deletion policies

## Acknowledgments

We appreciate the security research community's help in keeping research data templates secure. Contributors to security improvements will be acknowledged in our [AUTHORS](README.md#authors-and-credits) section unless they prefer to remain anonymous.

For questions about this security policy, please open a [GitHub Discussion](https://github.com/maehr/open-research-data-template/discussions).
