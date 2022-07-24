#!/bin/sh
#
HMAC_SECRET_FILENAM="$1"
GH_APP_PRIVATE_KEY_PATH="$2"
./bin/hook --github-app-id 221150 --hmac-secret-file ${HMAC_SECRET_FILENAME}--github-app-private-key-path ${GH_APP_PRIVATE_KEY_PATH}
    --config-path config.yaml --plugin-config plugins.yaml --dry-run=false
