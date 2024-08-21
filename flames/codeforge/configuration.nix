{ config, lib, pkgs, ... }:

{
  imports = [
    ../../modules/nixos/wsl.nix
  ];

  wsl.defaultUser = "ignite";

  programs.ssh.startAgent = true;  

  nix.settings.experimental-features = ["nix-command" "flakes"];

  system.stateVersion = "24.05";
}
