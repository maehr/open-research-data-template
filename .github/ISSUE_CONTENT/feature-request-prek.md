# 🛠️ Feature Request: Replace Husky with prek

## Description

Replace the current git hooks solution (Husky + manual command execution) with [prek](https://github.com/j178/prek), a modern, Rust-based pre-commit hook manager that is a faster, drop-in alternative to pre-commit.

### Current Solution

The repository currently uses:

- **Husky** for managing git hooks (installed via npm)
- **Manual command execution** in `.husky/pre-commit` that runs `npm run check`
- **Separate manual invocations** of formatting and linting tools:
  - `npm run format` (Prettier)
  - `uv run ruff format` and `uv run ruff check` (Python)
  - `uv run ty check` (Python type checking)
  - `styler::style_dir(".")` and `lintr::lint_dir(".")` (R)

### Proposed Solution

Migrate to **prek** which would provide:

1. **Unified Hook Management**: Single configuration file (`.pre-commit-config.yaml`) for all pre-commit hooks
2. **Better Performance**:
   - Faster than traditional pre-commit (~2-3x speed improvement)
   - Built in Rust with no Python dependency
   - Parallel hook execution
   - Shared toolchain management
3. **Native uv Integration**: Already uses uv for Python environments, aligning with current setup
4. **Cross-language Support**: Native support for Python, Node.js, R, Rust, Go, and more
5. **Built-in Hooks**: Rust-native implementations of common hooks for even better performance
6. **Better Developer Experience**:
   - Single binary, no runtime dependencies
   - Shell completions for hook IDs
   - Better command-line interface (`prek run --directory`, `prek run --last-commit`, etc.)
   - Built-in support for monorepos/workspaces

## Type of Issue

- [x] Enhancement

## Benefits

1. **Consistency**: All formatting and linting run automatically before commits
2. **Speed**: Significantly faster than the current setup
3. **Simplicity**: One tool instead of multiple manual commands
4. **Reliability**: Prevents committing unformatted or failing code
5. **Modern Stack**: Aligns with modern development practices (already using uv, Ruff, etc.)
6. **Better CI/CD**: Same hooks can run locally and in CI

## Potential Migration Path

1. Add `.pre-commit-config.yaml` with hooks for:
   - Prettier (for general formatting)
   - Ruff (for Python formatting and linting)
   - ty (for Python type checking)
   - R hooks (styler, lintr)
   - Built-in hooks (trailing whitespace, end-of-file fixer, etc.)

2. Install prek via one of several methods:

   ```bash
   # Via uv (recommended, already used in project)
   uv tool install prek

   # Via npm (to replace husky in package.json)
   npm add -D @j178/prek
   ```

3. Update `package.json` scripts:

   ```json
   {
   	"scripts": {
   		"prepare": "prek install",
   		"check": "prek run --all-files",
   		"format": "prek run --all-files --hook-stage manual"
   	}
   }
   ```

4. Remove Husky:

   ```bash
   npm uninstall husky
   rm -rf .husky
   ```

5. Update documentation (README.md, AGENTS.md, TODO.md, CONTRIBUTING.md) to reflect new workflow

## Similar Examples

Projects already using prek:

- [apache/airflow](https://github.com/apache/airflow/issues/44995)
- [python/cpython](https://github.com/python/cpython/issues/143148)
- [fastapi/fastapi](https://github.com/fastapi/fastapi/pull/14572)
- [astral-sh/ruff](https://github.com/astral-sh/ruff/pull/22505)
- [astral-sh/ty](https://github.com/astral-sh/ty/pull/2469)

## References

- **prek GitHub Repository**: https://github.com/j178/prek
- **prek Documentation**: https://prek.j178.dev/
- **Quick Start Guide**: https://prek.j178.dev/quickstart/
- **Configuration Reference**: https://prek.j178.dev/configuration/
- **Benchmark Results**: https://prek.j178.dev/benchmark/
- **Difference from pre-commit**: https://prek.j178.dev/diff/

## Considerations

1. **Learning Curve**: Team needs to understand `.pre-commit-config.yaml` syntax (though it's standard and well-documented)
2. **CI Integration**: Need to ensure prek runs in GitHub Actions workflows
3. **R Hooks**: Need to verify R language support is adequate for styler/lintr
4. **Migration Effort**: Moderate - requires updating documentation and developer workflows
5. **Compatibility**: prek is fully compatible with pre-commit configurations

## Implementation Checklist

- [ ] Research and test prek with current repository setup
- [ ] Create `.pre-commit-config.yaml` with all current hooks
- [ ] Test prek locally with existing codebase
- [ ] Update `package.json` to use prek instead of husky
- [ ] Update documentation (README.md, AGENTS.md, CONTRIBUTING.md, TODO.md)
- [ ] Update GitHub Actions workflows if needed
- [ ] Remove husky and `.husky` directory
- [ ] Update devcontainer configuration if needed
- [ ] Announce migration to contributors
- [ ] Update template instructions for users

## Expected Outcome

A more robust, faster, and maintainable pre-commit hook system that ensures code quality across all languages used in the repository (JavaScript, Python, R) while simplifying the developer experience and aligning with modern tooling practices.
