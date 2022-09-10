alias la='ls -A'
alias mountp='rclone mount pCloudBackup: /home/erebos/pcloud --vfs-cache-mode writes --daemon'
alias umountp='fusermount -u ~/pcloud'
alias wallpaper='feh --no-fehbg --bg-scale $1'
alias books='ranger ~/Documents/books'

LIGHTRED="\033[38;2;179;180;176m"
WHITE="\033[0m"

PS1='$(print "\n ${LIGHTRED}\w \n ${WHITE}")> '
export PS1

VISUAL=vi
export VISUAL

LC_ALL=C.UTF-8
export LC_ALL

LIBVA_DRIVER_NAME=iHD
export LIBVA_DRIVER_NAME

VDPAU_DRIVER=va_gl
export VDPAU_DRIVER

HISTFILE=$HOME/.sh_history
export HISTFILE

PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr:/sbin:/bin:~/.emacs.d/bin

set -o viraw
