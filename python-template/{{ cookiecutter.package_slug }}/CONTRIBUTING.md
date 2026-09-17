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

For Python code changes, the commit scope specifies the second-level
Python module name of the code instigating the change.  It does not
include the module's top-level prefix or any suffixes.  Functional or
unit test changes reference the scope of the code being exercised;
likewise for module-specific documentation.  Omit the commit scope
when describing changes to integration tests, to code in second-level
[dunder](https://wiki.python.org/moin/DunderAlias) modules, or to
general project documentation.

### [Refer to the detailed contribution guidelines for more information.]({{ cookiecutter.docs_url }}/)
