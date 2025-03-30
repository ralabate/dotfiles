# .bashrc

# Source git status for prompt
source /usr/share/doc/git/contrib/completion/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
PS1="🌖[\u@\h \W\$(__git_ps1)]$ "


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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

unalias ls
unalias ll
alias ll="ls -laph"

HISTFILESIZE=
HISTSIZE=1000000

alias bc="bc -l"
alias dirs="dirs -v"
alias du='du --block-size=1G -d 1 .'
alias latest='find . -type f -cmin -$((60 * 24)) -printf "%T@ %Tc %p\n" | sort -n | cut -c 23-'
alias o="gio open"
alias run_houdini="/opt/hfs20.5/bin/hindie"
alias run_krita="/opt/krita/krita-5.2.9-x86_64.AppImage"
alias run_krita="/opt/krita/krita-5.2.9-x86_64.AppImage"
alias run_godot="/opt/godot/Godot_v4.4-stable_linux.x86_64"

alias h='run_houdini `ls *.hiplc -rt1 | tail -n1`'
#alias screenrecord="/opt/ffmpeg-git-20220910-amd64-static/ffmpeg -f x11grab -i :0.0 -c:v prores -profile:v 0 -pix_fmt yuv422p10le grab.mov"

# TODO
# SUBSCREENRECORD VIA XRECTSEL                                                                 

export EDITOR=vim
#export OCIO=/mnt/s/Resources/ocio/aces_1.2/config.ocio
export VISUAL=vim

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


pushd -n /mnt/projects/Projects/around/around_frozen_field_pitchviz > /dev/null
pushd -n /mnt/projects/Projects/public_library/30ddl > /dev/null
pushd -n /mnt/projects/Projects/public_library/7drl > /dev/null
pushd -n /mnt/projects/Projects/around/WebAR/client > /dev/null
pushd -n /mnt/projects/Projects/around/around_holographic_projection > /dev/null
pushd -n /mnt/projects/Projects/around/around_line_portal_reveal > /dev/null
pushd -n /mnt/projects/Projects/around/around_welcome_to_ar > /dev/null
pushd -n /mnt/projects/Projects/around/around_home_run_fireworks> /dev/null
pushd -n /mnt/projects/Projects/public_library/subwaycrawler > /dev/null
pushd -n /mnt/projects/Projects/around/BASEBALL_01 > /dev/null
pushd -n /mnt/projects/Projects/around/CARNIVAL_02 > /dev/null
pushd -n /mnt/projects/Projects/around/CARNIVAL_01 > /dev/null

# xwindows/gnome
# ctrl+alt t terminal
# ctrl+at c chrome
# super+alt+d (drawonyourscreen)
# print (screenshot written to ~/Pictures)
# ctrl+print (screenshot to copy-paste buffer)
# shift+cntrl+print (select screenshot to copy-paste buffer)
