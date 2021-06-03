{ config, pkgs, ... }:

{

  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url =
        "https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz";
    }))
  ];

  # time.timeZone = Hongkong;
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
    pkgs.nodejs-16_x
    pkgs.hadolint
    pkgs.shellcheck
    pkgs.direnv
    pkgs.cachix
    pkgs.exa
    # pkgs.neovim-nightly
    pkgs.rnix-lsp
  ];

  # use nix-community cache, run once only
  # cachix use nix-community
  system.stateVersion = 4;

  environment.variables = {
    NIX_REMOTE = "daemon";
    GOPATH = "$HOME/go";
    TMUXP_CONFIGDIR = "$HOME/.tmuxp";
  };

  # shell config
  environment.shells = [ "/run/current-system/sw/bin/zsh" ];
  environment.systemPath = [
    "$HOME/go/bin"
    "$HOME/Library/Python/3.9/bin"
    "$HOME/.npm-global/bin"
    "$HOME/.self-built"
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
              '';

  fonts = {
    enableFontDir = true;
    fonts = with pkgs; [ nerdfonts ];
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableBashCompletion = true;
    enableFzfHistory = true;
    enableSyntaxHighlighting = true;
    # promptInit = "prompt off";
    promptInit = "";
  };

  #programs.ssh.knownHosts = [

  # ]

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
    buildCores = 2;
    gc.automatic = true;
  };

}
