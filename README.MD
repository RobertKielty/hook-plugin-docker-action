# Hook docker action

This action launches a hook instance with builtin plugins

## Inputs

## `hmac` token sued by GitHub for validating webhooks

**Required**

## `private-key` RSA private key and app id created for the GitHub App.

**Required**

## Outputs

none

## Example usage

uses: actions/hook@v1
with:
  plugin-to-run: 'blunderbuss'
