export EDITOR=nvim
export SUDO_EDITOR="$EDITOR"
export SYSTEMD_EDITOR="$EDITOR"

export CHROME_BIN=chromium

export NO_AT_BRIDGE=1

PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# Node manager n
# installes the node version under .node_modules/n/version
# https://github.com/tj/n
export N_PREFIX=$HOME/.node_modules
