#!/bin/bash

# Gets the latest gmusicbrowser commit hash
LATEST_COMMIT=$(git ls-remote --heads https://github.com/squentin/gmusicbrowser.git | head -n 1 |  head -c 40);

# Saves the location of the manifest file
MANIFEST_FILE=../../org.gmusicbrowser.gmusicbrowser.json

# check if the latest commit hash is already in the file and if yes, updates it
if grep -q $LATEST_COMMIT $MANIFEST_FILE
then
    echo "Pointing Flatpak manifest to latest build";
    sed -i "39s/.*/\t\t\t\t\"commit\": \"$LATEST_COMMIT\"/" $MANIFEST_FILE;
else
    echo "Flatpak manifest is up to date. Nothing to do"
fi
