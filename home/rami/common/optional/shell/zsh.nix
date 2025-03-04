{lib, ...}: {
  programs.zsh = {
    enable = true;
  };

  dotfiles = {
    files = {
      ".config/zsh" = lib.mkDefault "zsh";
      ".config/fsh" = lib.mkDefault "fsh";
      ".zshrc" = lib.mkDefault "shell/.zshrc";
      ".p10k.zsh" = lib.mkDefault "shell/.p10k.zsh";
      ".profile" = lib.mkDefault "shell/.profile";
    };
  };
}
