if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi

# added by Nix installer
if [ -e /home/lilin/.nix-profile/etc/profile.d/nix.sh ]; then . /home/lilin/.nix-profile/etc/profile.d/nix.sh; fi 


