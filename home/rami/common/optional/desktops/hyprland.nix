{
  pkgs,
  lib,
  ...
}: {
  imports = [
    ./fonts.nix
    ./power.nix
  ];

  programs.waybar.enable = true;
  home.packages = with pkgs; [
    hyprlock
    hyprpaper
    hypridle
    hyprlock
    dunst
    libnotify
    pamixer
    brightnessctl

    rofi-wayland
    swaylock-effects
    sddm-sugar-dark
    rofi-emoji-wayland
    hyprpicker
    eww

    qt6.qtwayland
    wl-mirror
    wl-clipboard
    wlogout
    wtype
  ];

  dotfiles = {
    files = {
      ".config/hypr" = lib.mkDefault "hypr";
      ".config/waybar" = lib.mkDefault "waybar";
      ".config/rofi" = lib.mkDefault "rofi";
      ".config/swaylock" = lib.mkDefault "swaylock";
      ".config/dunst" = lib.mkDefault "dunst";
    };
  };

  persist = {
    home = {
      ".local/share/hyprland" = lib.mkDefault true;
      ".local/share/sddm" = lib.mkDefault true;
      ".cache/snowflake" = lib.mkDefault true;
    };
  };
}
