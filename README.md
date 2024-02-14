# Devenvs.io event collector action

This action prints "Hello World" or "Hello" + the name of a person to greet to the log.

## Inputs

## `who-to-greet`

**Required** The name of the person to greet. Default `"World"`.

## `api-key`
## `branch`
## `actor`
## `repo`
## `org`
## `commit-msg`
## `commit-sha`

## Outputs

## `time`

The time we greeted you.

## Example usage

uses: actions/devenvs-col@v2
with:
  who-to-greet: 'Mona the Octocat'
