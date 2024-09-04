if status is-interactive
    # Commands to run in interactive sessions can go here
  alias se="EDITOR=nvim sudoedit"
  alias lg="lazygit"
end


set -x GOPROXY https://goproxy.cn

set -x PATH /home/me/ysftp_cli $PATH
set -x PATH /home/me/pros/postgresql-16.4/install/bin $PATH
