export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/local/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/firefox

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# Modifying PATH variable
if [ -d "$HOME/.bin" ] ; then
	PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/anaconda3/bin" ] ; then
	PATH="$PATH:$HOME/anaconda3/bin"
fi

if [ -d "/opt/tinytex/bin/x86_64-linux" ] ; then
	PATH="$PATH:/opt/tinytex/bin/x86_64-linux"
fi

# Make file viewers acknowledge special characters in file names
export LC_COLLATE=C
