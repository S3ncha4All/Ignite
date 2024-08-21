{ config, lib, pkgs, ... }:

{
  imports = [

  ];

  wsl.defaultUser = "ignite";

  programs.ssh.startAgent = true;  

  nix.settings.experimental-features = ["nix-command" "flakes"];



  environment.systemPackages = with pkgs; [
    neovim
    git
    wget
    zig
    jdk22
    fzy
   ];
}
