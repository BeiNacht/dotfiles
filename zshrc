export ZSH=/home/bernd/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(archlinux common-aliases docker npm systemd git)
export PATH="/home/bernd/.bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$PATH"
export DEFAULT_USER="bernd"
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export EDITOR='nano'
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/dsa_id"

alias db="sudo updatedb"
alias pac-big-size="expac -H M '%m %n' | sort -n"
alias active-services="systemctl --no-page --no-legend --plain -t service --state=running"
alias s="subl3"
alias -g C="| wc -l"
alias -g G="| grep --ignore-case"

[ -s "/home/bernd/.dnx/dnvm/dnvm.sh" ] && . "/home/bernd/.dnx/dnvm/dnvm.sh" # Load dnvm
