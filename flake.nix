{
  description = "A cheap & continously rebased fork of nixpkgs.lib";

  outputs = args: (import ./lib/flake.nix).outputs args;
}
