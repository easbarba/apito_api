# Apito | API

## Settings

- Default port is at `:5000`
- Prefix: `/api/v1`

## Endpoints

More information on endpoints is at `ENDPOINTS.md`.

## Installation

Get all dependencies and install with:

    $ make deps && make run

## OpenAPI

The current description of the API can be found at `OPS/openapi_*.json`.

## Insomnia

An Insomnia collection is available at the `OPS` folder.

## Container images

[Docker Hub](https://hub.docker.com/r/easbarbosa/apito)

## Database

Doctrine ORM expects an environment variable `$DATABASE_URL`, check `.envrc` for an example.

All SQL related tasks files are in `OPS/sql`, there are some goal in the `Makefile` to automate the process.

## GNU Guix

Load all system locall dependencies with `guix shell --pure`

## License

[GPL-v3](https://www.gnu.org/licenses/gpl-3.0.en.html)
