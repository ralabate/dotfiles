# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
unset rc

# Source git status for prompt
source /usr/share/doc/git/contrib/completion/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
PS1="🌖[\u@\h \W\$(__git_ps1)]$ "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export EDITOR=vim
export VISUAL=vim

HISTFILESIZE=
HISTSIZE=1000000

unalias ls
unalias ll

alias dirs="dirs -v"
alias du='du --block-size=1G -d 1 .'
alias h='run_houdini `ls *.hiplc -rt1 | tail -n1`'
alias latest='find . -type f -cmin -$((60 * 24)) -printf "%T@ %Tc %p\n" | sort -n | cut -c 23-'
alias ll="ls -laph"
alias n='run_nuke `ls *.nknc -rt1 | tail -n1`'
alias run_godot="/opt/godot/Godot_v4.4-stable_linux.x86_64"
alias run_houdini="/opt/hfs20.5/bin/hindie"
alias run_krita="/opt/krita/krita-5.2.9-x86_64.AppImage"
alias run_nuke="/opt/Nuke16.0v2/Nuke16.0 --nc"
alias screenrecord="ffmpeg -y -f x11grab -i :0.0 -c:v prores -profile:v 0 -pix_fmt yuv422p10le grab.mov"

man() {
    env \
    LESS_TERMCAP_mb="$(printf "\e[1;31m")" \
    LESS_TERMCAP_md="$(printf "\e[1;31m")" \
    LESS_TERMCAP_me="$(printf "\e[0m")" \
    LESS_TERMCAP_se="$(printf "\e[0m")" \
    LESS_TERMCAP_so="$(printf "\e[1;44;33m")" \
    LESS_TERMCAP_ue="$(printf "\e[0m")" \
    LESS_TERMCAP_us="$(printf "\e[1;32m")" \
    man "${@}"
}

###################
# Gnome Shortcuts #
###################

# Ctrl Alt c Chrome
# Ctrl Alt h Houdini
# Ctrl Alt n Nuke
# Ctrl Alt t Terminal

# Super D Show Desktop
# Disable Compose Key

# F1 switch to workspace 1 (steals houdini selection type and python state help hotkeys)
# F2 switch to workspace 2 (steals rename hotkey)
# F3 switch to workspace 3
# F4 switch to workspace 4

#################
# Shot Launcher #
#################

pushd -n /mnt/projects/Projects/around/WebAR/client > /dev/null
pushd -n /mnt/projects/Projects/around/houdini-assets/stanleycup > /dev/null
pushd -n /mnt/projects/Projects/talking_animals > /dev/null
pushd -n /mnt/projects/Projects/public_library/21dbl > /dev/null
pushd -n /mnt/projects/Projects/houdini-tutorial-solutions > /dev/null
