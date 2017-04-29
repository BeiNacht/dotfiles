ZSH_THEME="spaceship"
plugins=(battery common-aliases cp docker systemd git)
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export ZSH=/home/bernd/.oh-my-zsh
export PATH="/home/bernd/.bin:/home/bernd/.gem/ruby/2.4.0/bin:$PATH"
export DEFAULT_USER="bernd"
export LANG=en_US.UTF-8
export EDITOR='nano'
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/dsa_id"
source $ZSH/oh-my-zsh.sh

alias db="sudo updatedb"
alias pac-big-size="expac --humansize=M '%m %n' | sort -n"
alias active-services="systemctl --no-page --no-legend --plain -t service --state=running"
alias s="subl3"
alias -g C="| wc -l"
alias -g G="| grep --ignore-case"
alias installed-packages="comm -23 <(yaourt -Qqe|sort) <(pacman -Qqg base base-devel|sort)"
#alias l="ls++ --potsf"
#alias la="ls++ --potsf -a"
#alias ll="ls++ --potsf"

###-tns-completion-start-###
if [ -f /home/bernd/.tnsrc ]; then
    source /home/bernd/.tnsrc
fi

###-tns-completion-end-###
if [ -f /usr/share/nvm/init-nvm.sh ]; then
    source /usr/share/nvm/init-nvm.sh
fi
