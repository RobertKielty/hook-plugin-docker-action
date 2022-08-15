#!/bin/sh
#
# Launch custom (no k8s infra) hook build* as a GH Action to run a prow plugin
#
# Input Params : HMAC, PK, HOOK_CONFIG, PLUGIN_CONFIG
#

HMAC="$1"
GH_APP_ID="$2"
GH_APP_PK="$3"
PLUGIN="$4"

HOOK_CONFIG="$5"
PLUGIN_CONFIG="$5"

declare -r PKEY_FILE="./pkey"
declare -r HMAC_FILE="./hmac"

if [ "${HMAC}" != "" ]; then
    echo "${HMAC}" > "${HMAC_FILE}"
fi

if [ "${GH_APP_PK}" != "" ]; then
    echo "${GH_APP_PK}" > "${PKEY_FILE}"
fi

#
# HBD? Would have to consider whether or not to expose this capability to
# Project Owners. For proof of concept demo purposes lets use ./config.yaml
# and ./plugins.yaml from this repo.
#
if [ "${HOOK_CONFIG}" != "" ]; then
    echo "${HOOK_CONFIG}" > ./config.yaml
fi

if [ "${PLUGIN_CONFIG}" != "" ]; then
    echo "${PLUGIN_CONFIG}" > ./plugins.yaml
fi

/ko-app/hook \
    --hmac-secret-file "${HMAC_FILE}" \
    --github-app-id "${GH_APP_ID}  \
    --github-app-private-key-path "${GH_APP_PK}" \
    --config-path "${HOOK_CONFIG}" \
    --plugin-config "${PLUGIN_CONFIG}" \
    --dry-run=false
