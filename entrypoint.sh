#!/bin/sh
set -e

if [ -z "${INPUT_RACK:-}" ]; then
  echo "::error::Required input 'rack' is missing"
  exit 1
fi
if [ -z "${INPUT_APP:-}" ]; then
  echo "::error::Required input 'app' is missing"
  exit 1
fi
if [ -z "${INPUT_RESOURCE:-}" ]; then
  echo "::error::Required input 'resource' is missing"
  exit 1
fi
if [ -z "${INPUT_FILENAME:-}" ]; then
  echo "::error::Required input 'filename' is missing"
  exit 1
fi

echo "Running command on the application."

convox resources export "$INPUT_RESOURCE" --app "$INPUT_APP" --rack "$INPUT_RACK" > "$INPUT_FILENAME"