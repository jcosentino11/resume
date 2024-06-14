#!/usr/bin/env bash

STARTING_TAG=v1

git fetch --tags
LATEST_TAG=$(git describe --tags $(git rev-list --tags --max-count=1) 2>/dev/null)
if [ -z "${LATEST_TAG}" ]; then
  NEXT_TAG="${STARTING_TAG}"
else
  VERSION=${LATEST_TAG#v}
  NEXT_VERSION=$((VERSION + 1))
  NEXT_TAG="v${NEXT_VERSION}"
fi

echo "Creating tag: ${NEXT_TAG}"

git tag ${NEXT_TAG}
git push origin ${NEXT_TAG}
