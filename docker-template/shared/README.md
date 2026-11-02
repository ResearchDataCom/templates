#{{ cookiecutter.project_name }}

TODO: Provide a short summary stating the purpose of this project

## Environment Variables

TODO: Provide a list of Environment variables with short explanations
TODO: Ensure they're marked as **REQUIRED** or **OPTIONAL**

## Docker Secrets

To use [Docker secrets](https://docs.docker.com/engine/swarm/secrets/)
to specify the value of any environment variable listed above, first
add the suffix `_FILE` to the environment variable's name, and then
set its value to the pathname of the secret.  For example, to read the
database password from a secret named `db_pass`, set an environment
variable named `MYSQL_PASSWORD_FILE` to `/run/secrets/db_pass`.

TODO: Provide list of Docker Secrets with short explanations

## Initialization

TODO: Provide any instructions required for the initial run

## Caveats

TODO: List any footguns/pokey bits/unfortunately fragile hacks
