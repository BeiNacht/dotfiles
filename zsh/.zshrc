export ZSH=/home/bernd/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(archlinux common-aliases docker npm systemd git)
export PATH="/home/bernd/.bin:/home/bernd/.gem/ruby/2.3.0/bin:$PATH"
export DEFAULT_USER="bernd"
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export EDITOR='nano'
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/dsa_id"

alias db="sudo updatedb"
alias pac-big-size="expac --humansize=M '%m %n' | sort -n"
alias active-services="systemctl --no-page --no-legend --plain -t service --state=running"
alias s="subl3"
alias -g C="| wc -l"
alias -g G="| grep --ignore-case"
alias installed-packages="comm -23 <(yaourt -Qqe|sort) <(pacman -Qqg base base-devel|sort)"
alias l="ls++ --potsf"
alias la="ls++ --potsf -a"
