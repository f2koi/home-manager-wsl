{ ... }:
let
  nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
    ref = "nixos-24.05";
  });
in
{
  imports = [
    nixvim.homeManagerModules.nixvim
  ];

  programs = {
    nixvim = {
      enable = true;
      defaultEditor = true;
      opts = {
        number = true;
        relativenumber = true;
        expandtab = true;
        shiftwidth = 4;
        tabstop = 4;
      };
      colorschemes.tokyonight = {
        enable = true;
	settings.style = "storm";
      };
      plugins = {
        nvim-tree.enable = true;
      };
    };     
  };
}

