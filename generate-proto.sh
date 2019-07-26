#!/usr/bin/env bash
PROTO_IMPORT_DIR="./proto/"
GEN_OUT_DIR="./lib/__generated__"

# Create the generated output dir if it doesn't exist
if [ ! -d "$GEN_OUT_DIR" ]; then
  mkdir -p ${GEN_OUT_DIR}
fi

FILE_PATHS='./proto/*.proto'

# Generate Dart files
protoc \
  --dart_out=grpc:${GEN_OUT_DIR} \
  ${FILE_PATHS}