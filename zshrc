ZSH_THEME="spaceship"
plugins=(archlinux common-aliases docker npm systemd git)
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export ZSH=/home/bernd/.oh-my-zsh
export PATH="/home/bernd/.bin:/home/bernd/.gem/ruby/2.3.0/bin:$PATH"
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
alias installed-packages="comm -23 <(yaourt -Qqt|sort) <(pacman -Qqg base base-devel|sort)"
alias bat="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias activate-smb="sc-start smbd && sc-start nmbd"
alias stop-smb="sc-stop smbd && sc-stop nmbd"


###-tns-completion-start-###
if [ -f /home/bernd/.tnsrc ]; then
    source /home/bernd/.tnsrc
fi
###-tns-completion-end-###

if [ -f /usr/share/nvm/init-nvm.sh ]; then 
    source /usr/share/nvm/init-nvm.sh
fi

setopt hist_ignore_space
setopt hist_ignore_all_dups

