ZSH_THEME="spaceship"
plugins=(archlinux common-aliases docker npm systemd git)
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export ZSH=/home/alex/.oh-my-zsh
export PATH="/home/alex/.bin:/home/alex/.gem/ruby/2.4.0/bin:$PATH"
export DEFAULT_USER="alex"
export LANG=en_US.UTF-8
export EDITOR='nano'
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/id_rsa"
source $ZSH/oh-my-zsh.sh

alias db="sudo updatedb"
alias pac-big-size="expac --humansize=M '%m %n' | sort -n"
alias active-services="systemctl --no-page --no-legend --plain -t service --state=running"
alias -g C="| wc -l"
alias -g G="| grep --ignore-case"
alias installed-packages="comm -23 <(yaourt -Qqe|sort) <(pacman -Qqg base base-devel|sort)"

###-tns-completion-start-###
if [ -f /home/alex/.tnsrc ]; then
    source /home/alex/.tnsrc
fi

if [ -f /usr/share/nvm/init-nvm.sh ]; then
    source /usr/share/nvm/init-nvm.sh
fi

alias sm="cd src/shared && git checkout master && git pull && cd ../.."
alias vv="gulp serve --env local"
alias geno="gulp serve --env local --profile geno --instance"
alias gaa="git add --all && git reset src/index.ts"

setopt hist_ignore_space
setopt hist_ignore_all_dups
