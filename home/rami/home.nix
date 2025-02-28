{
  config,
  lib,
  pkgs,
  ...
}: {
  home.username = lib.mkDefault "rami";
  home.homeDirectory = lib.mkDefault "/home/${config.home.username}";

  home.packages = with pkgs; [
    (import ../../pkgs/zen.nix {
      appimageTools = pkgs.appimageTools;
      fetchurl = pkgs.fetchurl;
    })

    kitty
    gh
  ];

  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
}
