#!/bin/bash
#
# Launch custom (no k8s infra) hook build* as a GH Action to run a prow plugin
#
# Input Params : HMAC, PK, HOOK_CONFIG, PLUGIN_CONFIG
#

HMAC_SECRET_FILENAME="$1"
GH_APP_PRIVATE_KEY_PATH="$2"
HOOK_CONFIG="$3"
PLUGIN_CONFIG="$4"

#
# HBD? Would have to consider whther or not to expose this capability
# to Project Developers.
#
if [ "${HOOK_CONFIG}" != "" ]; then
    echo "${HOOK_CONFIG}" > ./config.yaml
fi

if [ "${PLUGIN_CONFIG}" != "" ]; then
    echo "${PLUGIN_CONFIG}" > ./plugins.yaml
fi

cd /hook || exit
pwd
echo "/hook/hook\
    --plugin ${PLUGIN_CONFIG} \
    --github-app-id 221150 \
    --hmac-secret-file ${HMAC_SECRET_FILENAME} \
    --github-app-private-key-path ${GH_APP_PRIVATE_KEY_PATH} \
    --config-path config.yaml --plugin-config plugins.yaml --dry-run=false"

/hook/hook --plugin-config "${PLUGIN_CONFIG}" \
    --github-app-id 221150 \
    --hmac-secret-file "${HMAC_SECRET_FILENAME}" \
    --github-app-private-key-path "${GH_APP_PRIVATE_KEY_PATH}" \
    --config-path config.yaml --plugin-config plugins.yaml --dry-run=false
