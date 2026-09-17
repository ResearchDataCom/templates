<!---

This work is marked CC0 1.0 Universal.  To view a copy of this mark,
visit https://creativecommons.org/publicdomain/zero/1.0/.

--->

# Contribution Guidelines

This project implements
[Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html) using
[Conventional Commits 1.0.0](https://www.conventionalcommits.org/en/v1.0.0/).
The project uses
[Git feature (topic) branches](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)
to maintain a [linear commit history](https://archive.is/VpWTs).
Changes must be self-contained.  Please rebase changes on the latest
HEAD of the main branch before submitting them for review as a
[GitHub pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests).

> [!NOTE]
>
> Cookiecutter templates can import files from another template using
> symbolic links.  Contributors and reviewers **MUST** check for these
> references manually and update them accordingly.  Symbolic links
> **MUST** be relative to the destination.

A commit's scope **SHOULD** be the top-level directory name, i.e., the
template name.  Changes covering multiple scopes or changes not
specific to one scope **MUST NOT** specify a scope, e.g., the
top-level cookiecutter configuration.
