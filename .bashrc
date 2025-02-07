# .bashrc

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

HISTFILESIZE=
HISTSIZE=1000000

alias bc="bc -l"
alias dirs="dirs -v"
alias du='du --block-size=1G -d 1 .'
alias latest='find . -type f -cmin -$((60 * 24)) -printf "%T@ %Tc %p\n" | sort -n | cut -c 23-'
alias o="gio open"
alias run_godot="/opt/godot/Godot_v3.2-stable_x11.64"
alias run_houdini="/opt/hfs20.5/bin/hindie"
alias h='run_houdini `ls *.hiplc -rt1 | tail -n1`'
alias screenrecord="/opt/ffmpeg-git-20220910-amd64-static/ffmpeg -f x11grab -i :0.0 -c:v prores -profile:v 0 -pix_fmt yuv422p10le grab.mov"

# TODO
# SUBSCREENRECORD VIA XRECTSEL                                                                 

export EDITOR=vim
export OCIO=/mnt/s/Resources/ocio/aces_1.2/config.ocio
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

pushd -n /mnt/s/Projects/subwaycrawler > /dev/null
pushd -n /mnt/s/Projects/ARound/BASEBALL_01 > /dev/null
pushd -n /mnt/s/Projects/ARound/CARNIVAL_02 > /dev/null
pushd -n /mnt/s/Projects/ARound/CARNIVAL_01 > /dev/null

# xwindows/gnome
# ctrl+alt t terminal
# ctrl+at c chrome
# super+alt+d (drawonyourscreen)
# print (screenshot written to ~/Pictures)
# ctrl+print (screenshot to copy-paste buffer)                                                                                                 21,1          All
# shift+cntrl+print (select screenshot to copy-paste buffer)
