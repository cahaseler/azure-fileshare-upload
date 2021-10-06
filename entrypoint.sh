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

if [ -z "$INPUT_SOURCE_DIR" ]; then
   echo "Source Dir name is not set. Quitting."
  exit 1
fi

if [ -n "$INPUT_CLOUD" ]; then
   echo "Setting Azure Cloud to $INPUT_CLOUD"
   az cloud set --name $INPUT_CLOUD
fi

EXTRA_ARGS=${INPUT_EXTRA_ARGS:""}

az storage file upload-batch --account-name $INPUT_ACCOUNT_NAME --account-key $INPUT_ACCOUNT_KEY --destination $INPUT_SHARE_NAME  --source $INPUT_SOURCE_DIR $EXTRA_ARGS
