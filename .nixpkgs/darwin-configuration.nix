{ config, pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.nixfmt
    pkgs.alacritty
    pkgs.tmux
    pkgs.git
    pkgs.go
    pkgs.ninja
    pkgs.bat
    pkgs.fzf
    pkgs.fd
    pkgs.ripgrep
    pkgs.dart
    pkgs.zsh
    pkgs.cmake
    pkgs.deno
    pkgs.nmap
    pkgs.zsh-syntax-highlighting
  ];
  system.stateVersion = 4;
  nix.useDaemon = true;

  environment.variables = {
    NIX_REMOTE = "daemon";
    GOPATH = "$HOME/go";
    TMUXP_CONFIGDIR = "$HOME/.tmuxp";
    # export PATH="$HOME/Library/Python/3.9/bin:$PATH"
    # export PATH="$HOME/go/bin:$PATH"
  };

  # shell config
  environment.shells = [ "/run/current-system/sw/bin/zsh" ];
environment.interactiveShellInit = ''
alias find="fd"
alias grep="rg"
alias vi="nvim"
alias vim="nvim"
alias vimdiff="nvim -d"
alias ls="exa --icons"
alias dotfiles='/usr/bin/git --git-dir=$home/.dotfiles/ --work-tree=$home'
# use gcc10 instead of appleclang
alias gcc='gcc-11'
alias cc='gcc-11'
alias g++='g++-11'
alias c++='c++-11'
# add pip3 alias
alias pip="pip3.9"
# fzf with preview
alias pfzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
# Load tmuxp config
alias start="sh ~/.tmuxp/start.sh"
'';
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableBashCompletion = true;
    enableFzfHistory = true;
    enableSyntaxHighlighting = true;
    promptInit = "prompt off";
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
