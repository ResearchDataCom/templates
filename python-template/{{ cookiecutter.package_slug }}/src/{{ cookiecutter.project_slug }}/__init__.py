"""Project metadata."""

from importlib.metadata import version

import structlog as logging

__app_name__ = __name__.replace("_", "-")
"""Reflects the Python package name."""

__version__ = version(__app_name__)
"""Reflects the Python package version."""

logger = logging.getLogger(__name__)
"""Configures module-level logging."""
