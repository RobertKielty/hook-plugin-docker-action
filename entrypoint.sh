#!/bin/sh
HMAC_SECRET_FILENAM
GH_APP_PRIVATE_KEY_PATH
./bin/hook --github-app-id 221150 --hmac-secret-file hmac --github-app-private-key-path private-key
    --config-path config.yaml --plugin-config plugins.yaml --dry-run=false
