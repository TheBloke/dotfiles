#!/usr/bin/bash

if [ ! -d "$HOME/.yadr" ]; then
    echo "Installing YADR for the first time"
    git clone --depth=1 https://github.com/TheBloke/dotfiles.git "$HOME/.yadr"
    cd "$HOME/.yadr"
    export ASK="true"
    rake install ask
else
    echo "YADR is already installed"
fi
