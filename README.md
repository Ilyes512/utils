# Docker Utils

A minimal Alpine based image with:

- bash (set as default shell for root user)
- curl
- wget
- jq
- yq
- sed
- pcre-tools

## Task

This project uses [Task](https://taskfile.dev) (an task runner / build tool). If you want to run the
`task act:*`-commands you will need to install [Act](https://github.com/nektos/act) as well.

Available tasks for this project:

```
* act:pr:       Run Act with pull_request event
* build:        Build the vscode-golang image
* lint:         Apply a Dockerfile linter (https://github.com/hadolint/hadolint)
* shell:        Interactive shell
```
