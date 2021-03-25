#!/bin/sh

set -e

if [ -z "$INPUT_ACCOUNT_NAME" ]; then
  echo "Sccount name is not set. Quitting."
  exit 1
fi

if [ -z "$INPUT_ACCOUNT_KEY" ]; then
  echo "Sccount name is not set. Quitting."
  exit 1
fi

if [ -z "$INPUT_SHARE_NAME" ]; then
  echo "Share name is not set. Quitting."
  exit 1
fi


$FILES=/
if [ -z "$INPUT_SOURCE_DIR" ]; then
  echo "Source name is not set. Running on entire repo."
  $FILES=$INPUT_SOURCE_DIR
fi

for f in $FILES
do
  echo "Uploading $f..."
  az storage file upload \
    --account-name $INPUT_ACCOUNT_NAME
    --account-key $INPUT_ACCOUNT_KEY
    --destination $INPUT_SHARE_NAME
    --source $FILES
done