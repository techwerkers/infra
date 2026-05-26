#!/bin/bash

if [ "$1" == "-h" ]; then
  cat <<EOF
Usage: ./build-rbac-jar.sh [-h]

Builds the rbac-provider.jar file by zipping the directory into a rbac-provider.jar file.
EOF
  exit 0
fi

OUTPUT_FILE="keycloak-rbac-provider.jar"

echo "INFO: Deleting old ${OUTPUT_FILE}"

rm $OUTPUT_FILE > /dev/null 2>&1

echo "INFO: Building new ${OUTPUT_FILE}"

pushd rbac-provider
zip ../${OUTPUT_FILE} -r *
popd

echo "INFO: Done"
