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
docker build --tag MY_APP_NAME .

```