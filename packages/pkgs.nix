{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    coreutils
    curl
    gnugrep
    gnupg
    gnused
    nnn
    openssh
    watch
    zstd

    neovim
    jq
    yq

    # development
    go
    jdk21_headless
    nodejs_22
    yarn
    python3
    uv
    nil
    nixd
    nixfmt-rfc-style

    # infrastructure
    docker-client
    k9s
    kubectl
    kubernetes-helm
    awscli2
    pulumi-bin

    # network diagnosis
    mtr
    q
  ];
}
