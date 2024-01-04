#!/bin/bash

# Set the URL of the existing remote repository
existing_remote_url="https://github.com/username/existing-repo.git"

# Set the URL of the new origin repository
new_origin_url="https://github.com/username/new-origin-repo.git"

# Set the name of the new origin remote
new_origin_remote="new-origin"

# Add the new origin repository as a remote
git remote add $new_origin_remote $new_origin_url

# Fetch all branches from the existing remote
git fetch --prune $existing_remote_url '+refs/heads/*:refs/remotes/origin/*'

# Push all branches to the new origin (mirror)
# Push all branches to the new origin (mirror)
# Push all branches to the new origin (mirror)
git push $new_origin_remote --mirror
