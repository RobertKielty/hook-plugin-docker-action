# Hook docker action

This action launches a hook instance with builtin plugins

## Inputs

## `hmac`
token used by GitHub for validating webhooks

**Required**

## `private-key`
RSA private key and app id created for the GitHub App.

**Required**

## Outputs

none

## Example usage

uses: actions/hook-plugin-docker-action@latest
