{
  description = "A cheap & continously rebased fork of nixpkgs.lib";

  outputs = { self }: {
    lib = import ./lib
      // { flake-utils = import ./flake-utils; };
  };
}
