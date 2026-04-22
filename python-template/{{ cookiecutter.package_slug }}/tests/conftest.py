"""The top-level test configuration file.

:::{caution}

This must remain outside the source tree.  If a container image
performs testing at build time, it cannot test itself.

:::

"""

import os
from copy import copy
from typing import Any, Dict, List

import pytest

options: List[Dict[str, Any]] = [
    {
        "name": "demo_url",
        "help": "The URL of the demo site.",
        "default": "",
    }
]
"""Defines additional pytest configuration items.

List entries are <inv:#pytest.Parser.addini> kwargs.  A default value
matching the configuration item's type is **REQUIRED**.  For example:

```
{
    "name": "db_driver",
    "help": "Use the named ODBC driver.",
    "default": "/usr/local/lib/libtdsodbc.so",
}
```

"""


def pytest_addoption(parser: pytest.Parser, pluginmanager: pytest.PytestPluginManager):
    """Customize the pytest configuration file and CLI arguments.

    :::{note}

    Pytest only calls this hook when loading plugins or the top-level
    test configuration file (this file).

    :::

    :param parser: The pytest configuration file and command line
      argument parser.

    :param pluginmanager: Manages the registration of pytest plugins
      and related hooks.

    """
    for option in options:
        option: Dict[str, Any]

        # Add each new option to both the configuration file and the
        # CLI argument list, e.g, an option named `the_option_name`
        # has a corresponding CLI argument named `--the-option-name`.
        parser.addini(**option)
        option = copy(option)
        option_name = f"--{option.pop('name').replace('_', '-')}"
        parser.addoption(option_name, **option)


def pytest_configure(config: pytest.Config):
    """Load the custom pytest configuration into the test session.

    Access the configuration via
    <inv:pytest:std:fixture#pytestconfig>, e.g.,
    `pytestconfig.option.the_option_name`.

    Allow overriding the configuration via the process environment.
    Environment variables must use option names converted to upper
    case, e.g,. `THE_OPTION_NAME`.

    :::{note}

    Environment variables override CLI arguments.  CLI arguments
    override the configuration file.  Configuration items default to
    `None` unless the configuration file option definition in
    {function}`pytest_addoption` specifies a different value.

    :::

    :param config: The pytest run-time configuration.

    """
    for option in options:
        option: Dict[str, Any]
        option_name: str = option["name"]

        # Pytest automatically converts CLI argument names back into
        # snake case, e.g., access the value of `--the-option-name`
        # using the key `the_option_name`.
        setattr(
            config.option,
            option_name,
            os.environ.get(
                option_name.upper(),
                config.getoption(option_name, config.getini(option_name)),
            ),
        )
