#!/bin/bash
set -euo pipefail

# GitHub repository information
REPO="wyne/fasder"
TAP_FILE="Formula/fasder.rb"

beta_flag=false

# Parse options
while [[ "$#" -gt 0 ]]
do
  case "$1" in
    -b) beta_flag=true ;;
    --beta) beta_flag=true ;;
    *)
      echo "Unknown option: ${1}" >&2
      exit 1
      ;;
  esac
  shift
done

# Check if the beta flag was set
if [[ "${beta_flag}" == true ]]
then
  TAP_FILE="Formula/fasderbeta.rb"
fi

# Fetch the latest release version from GitHub API
latest_release="$(curl -fsSL "https://api.github.com/repos/${REPO}/releases/latest")"
LATEST_VERSION="$(printf "%s\n" "${latest_release}" | sed -n 's/.*"tag_name": "\(.*\)".*/\1/p')"
echo "Latest version: ${LATEST_VERSION}"

# Download the latest release tarball
TARBALL_URL="https://github.com/${REPO}/releases/download/${LATEST_VERSION}/fasder-${LATEST_VERSION}.tar.gz"
echo "Downloading tarball from ${TARBALL_URL}"
curl -fsSL -o "${LATEST_VERSION}.tar.gz" "${TARBALL_URL}"

# Compute sha256 hash
checksum_line="$(shasum -a 256 "${LATEST_VERSION}.tar.gz")"
SHA256="${checksum_line%% *}"
echo "Computed SHA256: ${SHA256}"

# Update the Homebrew formula file
sed -i.bak "s|url \".*\"|url \"${TARBALL_URL}\"|g" "${TAP_FILE}"
sed -i.bak "s|sha256 \".*\"|sha256 \"${SHA256}\"|g" "${TAP_FILE}"
sed -i.bak "s|version \".*\"|version \"${LATEST_VERSION}\"|g" "${TAP_FILE}"

echo "Updated ${TAP_FILE} with the latest version and sha256."

# Clean up
rm "${LATEST_VERSION}.tar.gz"
