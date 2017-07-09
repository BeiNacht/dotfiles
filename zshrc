ZSH_THEME="spaceship"
plugins=(common-aliases cp docker systemd git)
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export ZSH=/home/bernd/.oh-my-zsh
export PATH="/home/bernd/.bin:/home/bernd/.gem/ruby/2.4.0/bin:$PATH"
export DEFAULT_USER="bernd"
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
alias installed-packages="comm -23 <(yaourt -Qqt|sort) <(pacman -Qqg base base-devel|sort)"
alias bat="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias activate-smb="sc-start smbd && sc-start nmbd"
alias stop-smb="sc-stop smbd && sc-stop nmbd"
alias brightness-max="echo 4794 | sudo tee /sys/class/backlight/intel_backlight/brightness"
alias brightness-power-save="echo 2300 | sudo tee /sys/class/backlight/intel_backlight/brightness"

if [ -f /home/bernd/.tnsrc ]; then
    source /home/bernd/.tnsrc
fi

if [ -f /usr/share/nvm/init-nvm.sh ]; then
    source /usr/share/nvm/init-nvm.sh
fi

setopt hist_ignore_space
setopt hist_ignore_all_dups
