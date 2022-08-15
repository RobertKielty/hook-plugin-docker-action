# Hook Plugin Docker Action

Github Action that launches a Prow Plugins using a custom buld of hook.
For more information on Prow Plugins see

https://github.com/kubernetes/test-infra/blob/master/prow/plugins/README.md#plugins

This action launches a hook instance with builtin Prow plugins so that the following Prow
Plugins can be started with out maintaining a running Prow instance :

Hook contains the following bulit in plugins:
For a list of Prow Plugins that are linked into hook see

https://github.com/kubernetes/test-infra/blob/master/prow/hook/plugin-imports/plugin-imports.go#L22

## Inputs

**Required**

## `hmac`
Token sent along with GitHub event data to ensure that the sender is valid

## `gh-app-id`
App id created for hook.

## `gh-app-id-private-key`
RSA private key created for hook gh app.

**Optional**

## `plugin`
Name of plugin to use

## `hook-config`
Custom hook configuration file. Defaults to [./config.yaml](./config.yaml) in this repo

## `plugin-config`
Custom plugin configuration file. Defaults to [./plugins.yaml](./plugins.yaml) in this repo

## Outputs

none

## Example usage

uses: RobertKielty/hook-plugin-docker-action@latest
