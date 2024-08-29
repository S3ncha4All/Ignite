{ config, lib, pkgs, ... }:

{
  imports = [

  ];

  environment.systemPackages = with pkgs; [
    ssh-agents
    ripgrep
    zsh
    neovim
    git
    wget
    zig
   ];


  wsl.defaultUser = "smith";

  programs.ssh.startAgent = true;  

  nix.settings.experimental-features = ["nix-command" "flakes"];

  nix.settings.access-tokens = [ "" ];

}

