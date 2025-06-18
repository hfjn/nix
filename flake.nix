{
  description = "nixos iso";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: {
    nixosConfigurations = {
      serveriso = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          "${nixpkgs}/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix"
          ({
            users.users.nixos = {
              openssh.authorizedKeys.keys = [
                "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFdjbeEw5WwvOCH75/Vv9FALi2phImZ5lCLP0s4YbKBP"
              ];
            };
          })
        ];
      };
    };
  };
}