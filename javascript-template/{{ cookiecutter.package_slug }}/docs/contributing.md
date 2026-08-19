# Contribution Guidelines

The project practices [test-driven development](https://tdd.mooc.fi/)
in
[Git feature (topic) branches](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)
to maintain a [linear commit history](https://archive.is/VpWTs).
Changes must be self-contained and buildable, with updated tests and
documentation.  Please rebase changes on the latest HEAD of the main
branch before submitting them for review as a
[GitHub pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests).

## Development Environment

This project requires Python 3.12 (or newer).  To set up your
development environment on Linux or macOS, run these
[GNU Make](https://www.gnu.org/software/make/) commands from the
project root directory.

`make setup`
: Create (or update) a
  [Python virtual environment](https://packaging.python.org/guides/installing-using-pip-and-virtual-environments)
  named `.venv` in the project root directory, and perform an editable
  installation of this project that includes development and testing
  tools.

`make pre-commit`
: Configure optional pre-commit hooks, which require the virtual
  environment to be active in your code editor or
  [Git porcelain](https://git-scm.com/book/en/v2/Git-Internals-Plumbing-and-Porcelain).

`make clean`
: Reset the development environment, which includes removing the
  pre-commit hooks.

Additional targets are available, several of which are listed below.
Review the makefile for details.

`make lint`
: Check code syntax and style.

`make test`
: Perform comprehensive functional and integration testing.

`make smoke`
: Run a shorter, faster subset of the test suite.

## Code Style

This project follows these code styles:

- [Python Black](https://black.readthedocs.io/)
  and [isort](https://pycqa.github.io/isort/)

- [the Google Markdown style guide](https://google.github.io/styleguide/docguide/style.html),
  but with a more traditional 70-character line limit

- [the Home Assistant YAML style guide](https://developers.home-assistant.io/docs/documenting/yaml-style-guide/)

## Commit Messages

This project implements
[Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html) using
[Conventional Commits 1.0.0](https://www.conventionalcommits.org/en/v1.0.0/):

- Please use English in commit messages.

- The first line of the commit message **SHOULD** be at most 100
  characters, while the rest of the commit message **SHOULD** be
  wrapped at column 70.

- The commit description **SHOULD** be an imperative sentence that
  summarizes the changes, with the starting verb in lower case and no
  ending punctuation.

- The commit type **MUST** be one of {term}`build`, {term}`chore`,
  {term}`ci`, {term}`docs`, {term}`feat`, {term}`fix`, {term}`perf`,
  {term}`style`, {term}`refactor`, or {term}`test`.

## Commit Scopes

An atomic commit can alter multiple files.  For example, an interface
change would require modifications the class definitions, method
calls, and property references throughout the codebase.  Per
_Conventional Commits_, a commit scope is an **OPTIONAL**
abbreviation, acronym, codename, or keyword that provides additional
context to reviewers by naming the essential component of the change.

For Python code changes, the commit scope **SHOULD** specify the
second-level Python module name of the code instigating the change.
The commit scope **MUST NOT** include the module's top-level prefix or
any suffixes.  Functional/unit test changes **SHOULD** reference the
scope of the code being exercised, while changes to integration tests
**MUST NOT** specify a scope.

Changes covering multiple scopes or changes not specific to one scope
**MUST NOT** specify a scope, including changes instigated by code in
second-level [dunder](https://wiki.python.org/moin/DunderAlias)
modules such as `src/{{ cookiecutter.project_slug }}/__init__.py`.

## Commit Types

{.glossary}
`build`
: a change to the build system or external dependencies, e.g., the
  makefile

{.glossary}
`chore`
: a miscellaneous tooling or tool configuration change, e.g., the
  .gitignore file, or a change not covered by the other commit types

{.glossary}
`ci`
: a change to continuous integration/continuous delivery (CI/CD)
  processes, e.g., GitHub Actions

{.glossary}
`docs`
: a documentation-only change, including edits to in-line
  documentation and comments

{.glossary}
`feat`
: a new feature

{.glossary}
`fix`
: a bug fix

{.glossary}
`perf`
: a code change that improves performance

{.glossary}
`refactor`
: a code change that neither fixes a bug nor adds a feature

{.glossary}
`style`
: a change that only affects formatting, or a change related to the
  linter configuration

{.glossary}
`test`
: a new test or a correction to an existing test
