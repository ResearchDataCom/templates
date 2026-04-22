"""Bundle functional tests with the distribution.

This facilitates the operational qualification of production
deployments.

The names of functional test modules corresponds to the module being
exercised, e.g., `test_schemas.py` exercises the code in `schemas.py`.
Test function names for API routes follow the corresponding route's
component path names plus the action being tested, e.g.,
`test_idp_creation` checks the `POST /idp` route.

"""
