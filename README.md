# Project Source Code Templates

Bootstrap new work using the provided source code templates with
[cookiecutter](https://cookiecutter.readthedocs.io/).
[_Good DevOps Practice_](https://github.com/ResearchDataCom/good-devops-practice)
describes the underlying methodology and recommended tooling in
greater detail.  For example:

```sh
cookiecutter gh:ResearchDataCom/templates
```

Select the desired template.  Provide both a project slug, which
**MUST** be in [snake_case](https://en.wikipedia.org/wiki/Snake_case),
and a one-sentence project description.  The other settings derive
their default values from the project slug, but engineers **MAY**
tailor those values as needed.  This creates a directory named after
the package slug, which **MAY** default to the project slug converted
to [kebab-case](https://en.wikipedia.org/wiki/Kebab_case) depending on
the template.

[![This video shows a typical cookiecutter run, which creates a Python project](demo.gif)](demo.tape)
