{ pkgs, lib, mnw, neovim, small ? true }:

let args = { inherit pkgs; };
in mnw.lib.wrap pkgs {
  appName = "nvim";
  neovim = pkgs.neovim.unwrapped.overrideAttrs {
    version = "0.12.0";
    src = neovim;
    doInstallCheck = false;
  };

  luaFiles = [ ./init.lua ];

  plugins = {
    startAttrs = import ./packages/startPlugins.nix args;
    start = import ./packages/treesitter.nix args;
    optAttrs = import ./packages/optionalPlugins.nix args;
    dev.config = {
      pure = let fs = lib.fileset;
      in fs.toSource {
        root = ./.;
        fileset = fs.unions [ ./lua ./after ];
      };
      impure = "~/nvim";
    };
  };
  extraBinPath = import ./packages/binaries.nix args
    ++ (if small then [ ] else import ./packages/extraBinaries.nix args);
}
