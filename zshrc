ZSH_THEME="spaceship"
plugins=(common-aliases cp docker systemd git wd)
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export ZSH=/home/bernd/.oh-my-zsh
export ANDROID_HOME=/opt/android-sdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH="/home/bernd/.bin:/home/bernd/.gem/ruby/2.5.0/bin:/home/bernd/.npm/bin:$PATH"
export PATH=${PATH}:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin
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
alias installed-packages="comm -23 <(trizen -Qqt|sort) <(pacman -Qqg base base-devel|sort)"
alias bat="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias activate-smb="sc-start smb && sc-start nmb"
alias stop-smb="sc-stop smb && sc-stop nmb"
alias brightness-max="echo 4794 | sudo tee /sys/class/backlight/intel_backlight/brightness"
alias brightness-power-save="echo 2300 | sudo tee /sys/class/backlight/intel_backlight/brightness"
alias ff='find . -type f -iname'
alias p="proxychains4 -q"

if [[ -f /usr/share/nvm/init-nvm.sh ]] && [[ -z ${LAUNCHER} ]]; then
    source /usr/share/nvm/init-nvm.sh
fi

setopt hist_ignore_space
setopt hist_ignore_all_dups
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'
alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'

