#!/bin/bash
set -ex

gem install slather

slather coverage \
  --workspace $workspace \
  --scheme $scheme \
  --output-directory $BITRISE_DEPLOY_DIR/$output_dir_path \
  --source-directory $source_dir_path \
  --binary-basename $tested_product_name \
  --html \
  $project

envman add --key BITRISE_SLATHER_HTML_PATH --value "$BITRISE_DEPLOY_DIR/$output_dir_path/index.html"
