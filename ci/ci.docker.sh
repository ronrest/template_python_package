#!/bin/bash
# ##############################################################################
# BUILD DOCKER IMAGE
#
# Build and push docker image.
#
# ##############################################################################
set -euo pipefail

# SETTINGS
IMAGE_TAG="delete"


# GET DIRECTORY OF CURRENT SCRIPT
SCRIPT_PATH=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")
PACKAGE_DIR=$( dirname -- "${SCRIPT_DIR}" )
BUILD_DIR=${PACKAGE_DIR}


echo "======================"
echo "BUILDING DOCKER IMAGE"
echo "======================"
docker build --tag "${IMAGE_TAG}" -f "${BUILD_DIR}/Dockerfile" "${BUILD_DIR}"

# Build with private gighub repos
# DOCKER_BUILDKIT=1 docker build --ssh default --tag "${IMAGE_TAG}" -f "${BUILD_DIR}/Dockerfile" "${BUILD_DIR}"


# echo "========================================="
# echo "PUSHING DOCKER IMAGE TO REMOTE REPOSITORY"
# echo "========================================="
# REMOTE_IMAGE_TAG="12346789.dkr.ecr.ap-southeast-2.amazonaws.com/${IMAGE_TAG}"   # To ECR
# REMOTE_IMAGE_TAG="myusername/${IMAGE_TAG}"                                      # To Dockerhub

# # LOGIN TO ECR USING DOCKER
# aws ecr get-login-password --region ap-southeast-2 | docker login --username AWS --password-stdin 123456789.dkr.ecr.ap-southeast-2.amazonaws.com

# # ASSIGN A NEW TAG TO EXISTING IMAGE - containing path of remote repo
# docker tag ${IMAGE_TAG}  ${REMOTE_IMAGE_TAG}

# PUSH TO REMOTE REPO
# docker push ${REMOTE_IMAGE_TAG}


echo ""
echo "DONE"
