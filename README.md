# Devenvs.io event collector action

## Inputs

## `api-key`
## `branch`
## `actor`
## `repo`
## `org`
## `commit-msg`
## `commit-sha`
## `image`
## `api-url`

## Outputs

## `time`

The time we greeted you.

## Example usage

```
uses: actions/devenvs-col@v6
with:
  api-key: djwkdjwk93878322
  branch: ${{ github.ref_name }}
  actor: ${{ github.actor }}
  repo: ${{ github.repository }}
  org: ${{ github.repository_owner }}
  commit-msg: ${{ github.event.head_commit.message }}
  commit-sha: ${{ github.sha }}
  api-url: ${{ https://something.com/sonething}}
```