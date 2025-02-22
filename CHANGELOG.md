# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

<details>
<summary>Todo before publishing a release</summary>

1. Run [typos](https://github.com/crate-ci/typos)
1. Update the version number in [`typst.toml`](./typst.toml)
1. Package locally under the `@preview` prefix with `just install-preview`
1. Update the `#import` line of [`template/main.typ`](template/main.typ) to target the new version
1. Check that everything works (except the font) when starting a new project from this template with `typst init @preview/paris-saclay-thesis-flat:<version>`
1. Here in the CHANGELOG, add a new heading after [Unreleased] with the new version number.
   Link this heading to `https://github.com/sebmestrallet/typst-paris-saclay-thesis-flat/releases/tag/<version-tag>`
1. Update the version number in the [`README.md`](./README.md) "Configuration" section
1. Update the version number in [`CITATION.cff`](./CITATION.cff)
1. Commit, tag and push, to trigger the GitHub Action creating a branch in [`sebmestrallet/typst-packages`](https://github.com/sebmestrallet/typst-packages), from which a PR can be created against [`typst/packages`](https://github.com/typst/packages/)

</details>

## [Unreleased]

## [1.0.2] - 2025-01-23

### Changed

- The [first thumbnail](./thumbnails/p1.png) (and only the first) is included in the Typst package. See [typst/packages#1610](https://github.com/typst/packages/pull/1610).

### Removed

- The _Segoe UI This_ font must be downloaded independently. See [typst/packages#1610](https://github.com/typst/packages/pull/1610).

## [1.0.1] - 2025-01-22

### Changed

- Thumbnails are now `exclude`d from published packages, the README refers to distant ones. See [submission guidelines regarding the size](https://github.com/typst/packages/blob/c785a41613cd9e4257cb2b697f90894f84629a14/README.md#submission-guidelines) and the [PR template](https://github.com/typst/packages/blob/main/.github/pull_request_template.md).

## [1.0.0] - 2025-01-22

Initial release

[Unreleased]: https://github.com/sebmestrallet/typst-paris-saclay-thesis-flat/compare/v1.0.2...HEAD
[1.0.2]: https://github.com/sebmestrallet/typst-paris-saclay-thesis-flat/compare/v1.0.1...v1.0.2
[1.0.1]: https://github.com/sebmestrallet/typst-paris-saclay-thesis-flat/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/sebmestrallet/typst-paris-saclay-thesis-flat/releases/tag/v1.0.0