{ config, pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
  nixpkgs = {
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);
      
    };
  };

  
  # managed by fleek, modify ~/.fleek.yml to change installed packages
  
  # packages are just installed (no configuration applied)
  # programs are installed and configuration applied to dotfiles
  home.packages = [
    # user selected packages
    pkgs.helix
    pkgs.aria2
    pkgs.fd
    pkgs.fzf
    pkgs.gcc
    pkgs.stdenvNoCC
    pkgs.imagemagick
    pkgs.imgbrd-grabber
    pkgs.opusTools
    pkgs.opustags
    pkgs.ffmpeg
    pkgs.intel-media-driver
    pkgs.rustup
    pkgs.nodejs_20
    pkgs.neovim
    pkgs.go
    pkgs.flutterPackages.stable
    pkgs.android-studio
    pkgs.bat
    pkgs.tldr
    pkgs.eza
    pkgs.unrar
    pkgs.unzip
    pkgs.zip
    pkgs.p7zip
    pkgs.unar
    pkgs.fish
    pkgs.pipx
    pkgs.scrcpy
    pkgs.btop
    pkgs.mangal
    pkgs.libva-utils
    pkgs.handbrake
    pkgs.calibre
    # Fleek Bling
    pkgs.git
    pkgs.htop
    pkgs.github-cli
    pkgs.glab
    pkgs.fzf
    pkgs.ripgrep
    pkgs.vscode
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
  fonts.fontconfig.enable = true; 
  home.stateVersion =
    "22.11"; # To figure this out (in-case it changes) you can comment out the line and see what version it expected.
  programs.home-manager.enable = true;
}