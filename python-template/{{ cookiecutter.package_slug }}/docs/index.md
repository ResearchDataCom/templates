---
sd_hide_title: True
---

# Overview

::::{grid}
:reverse:
:gutter: 3 4 4 4
:margin: 1 2 1 2

:::{grid-item}
:columns: 12 4 4 4

```{image} _static/logo-square.svg
:width: 200px
:class: sd-m-auto
:name: landing-page-logo
```

:::

:::{grid-item}
:columns: 12 8 8 8
:child-align: justify
:class: sd-fs-5

```{rubric} {{ cookiecutter.project_name }}
```

{{ cookiecutter.project_description }}

````{div} sd-d-flex-row

```{button-ref} intro
:ref-type: doc
:color: primary
:class: sd-rounded-pill sd-mr-3

Get Started
```

```{button-ref} roadmap
:ref-type: doc
:color: secondary
:class: sd-rounded-pill

Learn More
```

````

:::

::::

---

## Conventions

:::{admonition} Guidance

Interpret the key words **MUST**, **MUST NOT**, **REQUIRED**,
**SHALL**, **SHALL NOT**, **SHOULD**, **SHOULD NOT**, **RECOMMENDED**,
**MAY**, and **OPTIONAL** as described in
[RFC 2119](https://www.rfc-editor.org/rfc/rfc2119).

:::

Authoritative guidance using these key words appear in admonitions
titled "Guidance", like above.  An explanation of the rationale for
the rule plus supporting material appears after in separate
paragraphs, like this.  Usually, each rule falls under its own
subheading, which facilitates cross-referencing.  Top-level headings
provide a content summary or a quick reference.

## Scope

% TODO

## Audience

% TODO

## Authoring

This document is written using
[MyST Markdown](https://myst-parser.readthedocs.io/), a strict
superset of the
[CommonMark syntax specification](https://spec.commonmark.org/) that
adds features focused on scientific and technical documentation
authoring.  Markdown is specifically designed to be readable across
multiple devices in a variety of formats without requiring an online
Internet connection.  Formatting, collaborative editing, and
publishing follows the same standards and practices described herein.

## Structure

% TODO

```{toctree}
:hidden:

intro
roadmap
charter
contributing
```

```{toctree}
:hidden:
:caption: Appendices

apidocs/index
bibliography
credits
```
