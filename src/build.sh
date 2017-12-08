#!/bin/bash

XPI_FILE=fil_spellcheck-dev-build-pm-fx-tb-sm

echo "- Removing old xpi file"
rm $XPI_FILE.xpi

echo "- Deleting .DS_Store files"
find . -name \.DS_Store -exec rm -v {} \;

echo "- Creating xpi file"
zip -r $XPI_FILE.xpi LICENSE install.rdf dictionaries
