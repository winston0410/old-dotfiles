{ config, pkgs, ... }:

{
  programs.zsh.enable = true; # default shell on catalina
  environment.systemPackages = [ pkgs.nixfmt pkgs.alacritty pkgs.tmux pkgs.git pkgs.go pkgs.ninja pkgs.bat pkgs.fzf pkgs.fd pkgs.ripgrep];
  system.stateVersion = 4;
  nix.useDaemon = true;
}
