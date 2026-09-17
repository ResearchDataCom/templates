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

> [!TIP]
>
> Because this is a documentation project, only use the `docs` commit
> type when making changes to project meta-documentation such as this.
> Use the `feat`, `fix`, `refactor`, and `style` commit types to
> describe content edits appropriately.

No commit scopes are currently in use.

### [Refer to the detailed contribution guidelines for more information.]({{ cookiecutter.docs_url }}/)
