alias la='ls -Ahp'
alias ll='ls -Alhp'
alias ls='ls -p'
alias watchwifi='watch -n 0.5 nmcli device wifi list'
alias edit='~/scripts/edit.sh'
alias vifi='find . -maxdepth 1 -type f | sort | vidir -'
alias notes='~/scripts/notestopdf.sh'
alias cheat='cheat -c'
alias voidp='for package in $(fd . /home/lilin/void-packages/srcpkgs | cut -sd / -f 6- | fzf --border sharp); do cd ~/void-packages/srcpkgs/$package && print "\033[39m \n Showing files for ${package%%/}: \n" && ls -Ap; done'
alias yt='yt-dlp $1'
alias cleanup='~/scripts/cleanup'
alias vim='nvim $1'
alias backup='~/scripts/backup.sh'
alias sync='~/scripts/sync.sh && sudo chown -R lilin:lilin ~/Uni'
alias poweroff='sudo poweroff'
alias rg='ranger'

wallpaper () {
	setopt localoptions rmstarsilent;
	feh --no-fehbg --bg-scale $1;
	rm ~/Pictures/wallpaper/*;
	ln $1 ~/Pictures/wallpaper;
}

# These two have to be functions, since the syntax-highlighting in the prompt doesn't recognize them properly
xin() {sudo xbps-install $@}
xr() {sudo xbps-remove $@}

export PATH=$PATH:/home/lilin/.local/bin/:~/alr/bin/
export SXHKD_SHELL=/bin/sh
export W3MIMGDISPLAY_PATH=/usr/lin/w3m/w3mimgdisplay

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/lilin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# This fixes the backspace not deleting non-inserted characters
bindkey "^H" backward-delete-char
bindkey "^?" backward-delete-char


# Loading of Starship prompt
eval "$(starship init zsh)"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust
### End of Zinit's installer chunk

# Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

# Syntax highlighting theming
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='none'
ZSH_HIGHLIGHT_STYLES[alias]='none'
ZSH_HIGHLIGHT_STYLES[builtin]='none'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'

