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

## CI

CI steps

```bash
bash ci/ci.style.sh         # Check formatting
bash ci/ci.requirements.sh  # Re-build the requirements.txt files
bash ci/ci.docker.sh        # Build and push docker image
```

## Git commits

The following prefixes are used

```bash
FEAT        # a new feature is introduced with the changes
FIX         # a bug fix has occurred
CHORE       # eg. updating dependencies
REFACTOR    # refactored code that neither fixes a bug nor adds a feature
DOCS        # updates to documentation such as a the README or other markdown files
STYLE       # changes that do not affect the meaning of the code,
            # eg code formatting, white-space, missing semi-colons, etc.
TEST        # including new or correcting previous tests
PERF        # performance improvements
CI          # continuous integration related
BUILD       # changes that affect the build system or external dependencies
REVERT      # reverts a previous commit
```
