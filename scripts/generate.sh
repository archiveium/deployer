#!/bin/bash

echo 'Removing existing docker-compose.yml file'
rm docker-compose.yml

echo 'Creating temporary file to work on'
cp templates/docker-compose.template docker-compose.yml

echo 'Replacing app version'
sed -i 's/APP_VERSION/0.1.5/g' docker-compose.yml

echo 'Replacing jobber version'
sed -i 's/JOBBER_VERSION/0.0.7/g' docker-compose.yml

echo 'Setting up github user for auto-commit'
git config user.name github-actions
git config user.email github-actions@github.com

echo 'Commit docker-compose.yml'
git add docker-compose.yml
git commit -m "chore: Bump version" docker-compose.yml
git push