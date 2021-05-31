{ config, pkgs, ... }:

{
  programs.zsh.enable = true; # default shell on catalina
  environment.systemPackages = [ pkgs.nixfmt pkgs.alacritty pkgs.tmux pkgs.git pkgs.go pkgs.ninja pkgs.bat pkgs.fzf pkgs.fd pkgs.ripgrep pkgs.dart];
  system.stateVersion = 4;
  nix.useDaemon = true;

  environment.variables = {

  };

  # Keyboard
  system.keyboard = {
    enableKeyMapping = true;
    remapCapsLockToControl = true;
  };

# Dock configuration
  system.defaults.dock = {
	  autohide = true;
	  mru-spaces = false;
	  minimize-to-application = true;
  };

# Finder configuration
  system.defaults.finder = {
	  AppleShowAllExtensions = true;
	  _FXShowPosixPathInTitle = true;
	  FXEnableExtensionChangeWarning = false;
  };

# Trackpad
  system.defaults.trackpad = {
	  Clicking = true;
	  TrackpadThreeFingerDrag = true;
  };
}
