{
  description = "A cheap & continously rebased fork of nixpkgs.lib";

  inputs.flake-compat.url = "github:nix-community/flake-compat";

  outputs = { self, ... }: { lib = import ./lib; };
}
