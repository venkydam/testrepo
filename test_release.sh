#!/bin/bash
RELEASE_TYPE="$(node -e "console.log(require('semver').prerelease('1.0.1') ? 'prerelease' : 'regular')")"
echo "Release type: $RELEASE_TYPE"
if [[ $RELEASE_TYPE == 'regular' ]]; then
  echo "This would set prerelease=false"
else
  echo "This would set prerelease=true"
fi