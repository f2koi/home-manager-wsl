{ config, pkgs, ... }:
{
  imports = [ ./nixvim.nix ];

  home = {
    username = "f2koi";
    homeDirectory = "/home/f2koi";
    packages = with pkgs; [ kustomize ];
    shellAliases = {
      vim = "nvim";
      git = "git.exe";
    };
  };

  programs = {
    home-manager.enable = true;

    zsh = {
      enable = true;
      shellAliases = {
        vim = "nvim";
      };
      oh-my-zsh = {
        enable = true;
        theme = "mh";
      };
    };
  };

  home.stateVersion = "24.05";
}

