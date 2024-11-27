if status is-interactive
    # Commands to run in interactive sessions can go here
  alias se="EDITOR=nvim sudoedit"
  alias lg="lazygit"
  alias fzf-file="rg --files --color never --hidden --no-ignore | fzf"
end

set -x GOPROXY https://goproxy.cn
