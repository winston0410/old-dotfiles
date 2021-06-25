{ config, pkgs, ... }:

{

  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url =
        "https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz";
    }))
  ];

  environment.systemPackages = [
    pkgs.bat
    pkgs.git
    pkgs.tmux
    pkgs.tmuxp
    pkgs.exa
    pkgs.fzf
    pkgs.fd
    pkgs.ripgrep
    pkgs.zsh
    pkgs.zsh-syntax-highlighting
    pkgs.coreutils
  ];

  system.stateVersion = 4;

  environment.variables = {
    NIX_REMOTE = "daemon";
    GOPATH = "$HOME/go";
    TMUXP_CONFIGDIR = "$HOME/.tmuxp";
    WEZTERM_CONFIG_FILE = "$HOME/.config/wezterm/config.lua";
  };

  # shell config
  environment.shells = [ "/run/current-system/sw/bin/zsh" ];
  environment.systemPath = [
    "$HOME/go/bin"
    "$HOME/Library/Python/3.9/bin"
    "$HOME/.npm-global/bin"
    "$HOME/.self-built/bin"
    "$HOME/.local/bin"
  ];
  environment.interactiveShellInit = ''
                alias find="fd"
                alias grep="rg"
                alias vi="nvim"
                alias vim="nvim"
                alias vimdiff="nvim -d"
                alias ls="exa --icons"
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

    			alias dotfiles='/run/current-system/sw/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

        		# Change cmake compiler
            	export CC=$(which gcc-11)
            	export CXX=$(which g++-11)

        		alias luamake=/Users/hugosum/.config/standalone/lua-language-server/3rd/luamake/luamake
                eval "$(direnv hook zsh)"
              '';

  fonts = {
    enableFontDir = true;
    fonts = with pkgs; [ nerdfonts ];
  };

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableBashCompletion = true;
    enableFzfHistory = true;
    enableSyntaxHighlighting = true;
    promptInit = "";
  };

  system.defaults = {
    NSGlobalDomain = {
      AppleFontSmoothing = 2;
      NSDocumentSaveNewDocumentsToCloud = false;
    };
    finder = {
      QuitMenuItem = true;
      AppleShowAllExtensions = true;
      _FXShowPosixPathInTitle = true;
      FXEnableExtensionChangeWarning = false;
    };
    trackpad = {
      ActuationStrength = 1;
      Clicking = false;
      TrackpadThreeFingerDrag = false;
    };
    dock = {
      autohide = true;
      mru-spaces = false;
      minimize-to-application = true;
    };
  };

  # Keyboard
  system.keyboard = {
    enableKeyMapping = true;
    remapCapsLockToControl = true;
  };

  nix = {
    useDaemon = true;
    binaryCaches = [ "https://cache.nixos.org" ];
    trustedBinaryCaches = [ "https://cache.nixos.org" ];
    buildCores = 0;
    gc.automatic = true;
  };
}
