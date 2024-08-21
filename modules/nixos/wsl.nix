{
  inputs = {
    nixos-wsl.url = "github:nix-community/NixOS-WSL/main";
  };

  outputs = { self, nixos-wsl, ... }: {
    nixos-wsl.enable = true;
  };
}
