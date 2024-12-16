#!/bin/bash
set -exo pipefail

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
curl -fsSL https://nixos.org/nix/install | sh -s -- --daemon
export PATH="$PATH:/run/current-system/sw/bin"
curl -fsSL -o /tmp/nix.zip https://github.com/mikucat0309/nix/archive/refs/heads/main.zip
unzip /tmp/nix.zip -d ~
mv ~/nix-main ~/nix
nix --extra-experimental-features "nix-command flakes" run nix-darwin -- switch --flake ~/nix#DESKTOP-MIKUCAT
