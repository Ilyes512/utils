# Docker Utils

A minimal Alpine based image with:

- bash (set as default shell for root user)
- curl
- wget
- jq
- yq
- sed
- pcre-tools
- ssh-keygen

## Task

This project uses [Task](https://taskfile.dev) (an task runner / build tool). If you want to run the
`task act:*`-commands you will need to install [Act](https://github.com/nektos/act) as well.

Available tasks for this project:

```
* act:master:   Run Act with push event on master branch
* act:pr:       Run Act with pull_request event
* act:tag:      Run Act with tag (push) event
* build:        Build the vscode-golang image
* lint:         Apply a Dockerfile linter (https://github.com/hadolint/hadolint)
* shell:        Interactive shell
```

### Act tasks

[Act](https://github.com/nektos/act) is a tool to run Github Actions locally. Before you can run Act and the
`act:*`-tasks you need to add an `GITHUB_TOKEN`-secret. You can do this by adding the following
Act config file to you users `$HOME`-directory:

File path: `~/.actrc`
```
-s GITHUB_TOKEN=<your_github_token>
```

Replace `<your_github_token>` with a Github personal acces token. You can generate a new token
[here](https://github.com/settings/tokens/new?description=Act) (no scopes
are needed!).
