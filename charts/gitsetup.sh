#!/bin/bash

#Pass github repo argument
REPO=$1

echo "Initialzing local git..."
git init

echo "Adding remote repo $REPO..."
git remote add dev $REPO

echo "Fetching and checking out remote dev branch..."
git fetch dev
git branch dev dev/dev
git checkout dev