# Contribution Guidelines

The project practices [test-driven development](https://tdd.mooc.fi/)
in
[Git feature (topic) branches](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow),
using
[Conventional Commits 1.0.0](https://www.conventionalcommits.org/en/v1.0.0/)
to implement
[Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html).
Please maintain a [linear commit history](https://archive.is/VpWTs) by
rebasing self-contained, buildable changes (with updated tests and
documentation) on the latest HEAD of the main branch before submitting
them for review as a
[GitHub pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests).

> [!IMPORTANT]
>
> A commit's scope **SHOULD** be the top-level directory name.
> Changes covering multiple scopes or changes not specific to one
> scope **MUST NOT** specify a scope, e.g., the top-level cookiecutter
> configuration.

The commit scope specifies the module instigating the change as some
code/content could be shared within the project.  Functional or unit
test changes reference the scope of the code being exercised; likewise
for module-specific documentation.  Omit the commit scope when
describing changes to integration tests, to code inside of modules
themselves, or to general project documentation.
