# Contribution Guidelines

This project implements
[Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html) using
[Conventional Commits 1.0.0](https://www.conventionalcommits.org/en/v1.0.0/).
The project practices [test-driven development](https://tdd.mooc.fi/)
in
[Git feature (topic) branches](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)
to maintain a [linear commit history](https://archive.is/VpWTs).
Changes must be self-contained and buildable, with updated tests and
documentation.  Please rebase changes on the latest HEAD of the main
branch before submitting them for review as a
[GitHub pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests).

A commit's scope **SHOULD** be the second-level Python module name
sans the top-level prefix or any suffixes.  Functional test changes
should use the scope of the module being exercised, while changes to
integration tests **MUST NOT** specify a scope.  Changes covering
multiple scopes or changes not specific to one scope **MUST NOT**
specify a scope, including changes instigated by code in second-level
[dunder](https://wiki.python.org/moin/DunderAlias) modules.

### [Refer to the detailed contribution guidelines for more information.]({{ cookiecutter.docs_url }}/)
