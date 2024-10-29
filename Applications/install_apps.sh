#!/bin/bash

# List of applications to install
apps=(
    "microsoft-edge"
    "cursor-bin"
    "oblivion"
    "google-chrome"  # Correct name for Chrome
    "chromium"
    "spotube"
    "nekoray"
    "telegram-desktop"  # Correct name for Telegram Desktop
    "docker"
    "docker-compose"
)

# Install applications using yay
yay -S --noconfirm "${apps[@]}"

# Start Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Clone Devilbox into ~/Applications
mkdir -p ~/Applications
git clone https://github.com/cytopia/devilbox.git ~/Applications/devilbox
