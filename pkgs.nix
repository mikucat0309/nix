{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    coreutils
    curl
    delta
    git
    gnugrep
    gnupg
    gnused
    htop
    openssh
    tmux
    watch
    yazi
    zstd

    neovim
    jq
    yq

    # development
    go
    jdk17_headless
    jdk21_headless
    nodejs_22
    yarn
    python313
    uv

    # infrastructure
    lima
    docker-client
    k9s
    kubectl
    kubernetes-helm
    awscli2

    # database
    mariadb-client

    # network diagnosis
    mtr
    q
    iproute2mac
  ];
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    noto-fonts-color-emoji
  ];

  system.activationScripts.extraActivation.text = ''
    ln -sf "${pkgs.jdk17_headless}/zulu-17.jdk" "/Library/Java/JavaVirtualMachines/"
    ln -sf "${pkgs.jdk21_headless}/zulu-21.jdk" "/Library/Java/JavaVirtualMachines/"
  '';
}
