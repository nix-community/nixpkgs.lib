{ lib, ... }: {
  config = {
    _module.freeformType = lib.types.anything;
    ok =
      lib.evalModules {
        specialArgs.class = "nixos";
        modules = [
          ./module-class-is-nixos.nix
        ];
      };

    fail =
      lib.evalModules {
        specialArgs.class = "nixos";
        modules = [
          ./module-class-is-nixos.nix
          ./module-class-is-darwin.nix
        ];
      };

    fail-anon =
      lib.evalModules {
        specialArgs.class = "nixos";
        modules = [
          ./module-class-is-nixos.nix
          { _file = "foo.nix#darwinModules.default";
            class = "darwin";
            imports = [];
          }
        ];
      };

  };
}
