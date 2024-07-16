#!/usr/bin/env bash

# Login 
gh auth login

# Tag the repository
STARTING_TAG=v1
git fetch --tags --prune --prune-tags
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

# Create GitHub release with the PDF
echo "Creating GitHub release"
git push origin ${NEXT_TAG}
gh release create --verify-tag --title "Resume ${NEXT_TAG}" --notes "" ${NEXT_TAG} build/resume.pdf
echo "Resume ${NEXT_TAG} release d!"
