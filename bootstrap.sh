#!/bin/bash
set -exo pipefail

install-nix() {
    curl -fsSL https://nixos.org/nix/install | sh -s -- --daemon
    export PATH="/run/current-system/sw/bin:/nix/var/nix/profiles/default/bin:$PATH"
}

install-homebrew() {
    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
    export PATH="/opt/homebrew/bin:$PATH"
}

install-nix-darwin() {
    curl -fsSL -o /tmp/nix.zip https://github.com/mikucat0309/nix/archive/refs/heads/main.zip
    unzip /tmp/nix.zip -d ~
    mv ~/nix-main ~/nix
    nix --extra-experimental-features "nix-command flakes" run nix-darwin -- switch --flake ~/nix#DESKTOP-MIKUCAT
}

install-nix
install-nix-darwin
install-homebrew

sudo nvram StartupMute=%01
sudo mkdir -p /usr/local/bin
