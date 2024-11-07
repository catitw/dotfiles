# Installing

1. install `chezmoi`

2. `chezmoi init siuolyppah --ssh`

   > you can pull and apply the latest changes from your repo with: `chezmoi update -v`

3. `chezmoi apply`, or

   `chezmoi apply -R` for external resources.

# `chezmoi` workflow

> https://www.chezmoi.io/user-guide/command-overview/#daily-commands

# Working with templates

- [`chezmoi data`](https://www.chezmoi.io/reference/commands/data/) prints the available template data.
- [`chezmoi add --template $FILE`](https://www.chezmoi.io/reference/commands/add/) adds `$FILE` as a template.
- [`chezmoi chattr +template $FILE`](https://www.chezmoi.io/reference/commands/chattr/) makes an existing file a template.
- [`chezmoi cat $FILE`](https://www.chezmoi.io/reference/commands/cat/) prints the target contents of `$FILE`, without changing `$FILE`.
- [`chezmoi execute-template`](https://www.chezmoi.io/reference/commands/execute-template/) is useful for testing and debugging templates.
