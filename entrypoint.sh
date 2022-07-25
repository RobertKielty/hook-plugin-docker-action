#!/bin/sh

#
# Launch *custom (no k8s infra) hook build* as a GH Action to run a prow plugin
#
# Input Params : HMAC, PK, PLUGIN
#

HMAC_SECRET_FILENAME="$1"
GH_APP_PRIVATE_KEY_PATH="$2"
PLUGIN="$3"

./bin/hook  \
    --plugin "${PLUGIN}" \
    --github-app-id 221150 \
    --hmac-secret-file "${HMAC_SECRET_FILENAME}" \
    --github-app-private-key-path "${GH_APP_PRIVATE_KEY_PATH}" \
    --config-path config.yaml --plugin-config plugins.yaml --dry-run=false
