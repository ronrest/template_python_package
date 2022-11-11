# Contributing

- [main](README.md)

## Update dependencies

```bash
# ------------------------------------------------------------------------------
# PREPARE PINNED DEPENDENCIES
# NOTE: Requires `pip-tools` to be installed.
# ------------------------------------------------------------------------------
# 1. Create the requirements.txt file (Prod dependencies)
pip-compile  

# 2. Create requirements-dev.txt (Dev dependencies)
pip-compile setup.py --extra dev -o requirements-dev.txt

```


## Run Tests

```bash
pytest

```

## Formatting

```bash
# Print out if any changes would need to be made to formatting of code
python -m black --check --diff --color ./

# Make actual canges to code formatting
python -m black ./

```


## Docker Image

```bash
# Build docker image normally
docker build --tag MY_APP_NAME .

# Build docker image that fetches things from private github repositories
DOCKER_BUILDKIT=1 docker build --ssh default --tag MY_APP_NAME .
```