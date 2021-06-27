{ config, pkgs, ... }:

{

  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url =
        "https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz";
    }))
  ];

  nixpkgs.config = {
    allowUnfree = true;
    allowUnsupportedSystem = true;
  };

  environment.systemPackages = [
    pkgs.rust-analyzer
    pkgs.checkmake
    # pkgs.sumneko-lua-language-server
    # import ./sumneko-lua-language-server.nix
    pkgs.postgresql_13
    pkgs.lua51Packages.luarocks
    pkgs.dotenv-linter
    pkgs.rustc
    pkgs.cargo
    pkgs.vscode
    pkgs.nixfmt
    pkgs.shfmt
    pkgs.gcc
    # pkgs.alacritty
    pkgs.tmux
    pkgs.neovim
    pkgs.git
    pkgs.go
    pkgs.gopls
    pkgs.golint
    pkgs.goimports
    # pkgs.dockfmt
    # pkgs.sqls
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
    pkgs.pandoc
    # For using react-native
    pkgs.watchman
    # pkgs.neovim-nightly
    pkgs.rnix-lsp
    pkgs.ccls
    pkgs.ktlint
    pkgs.watchexec
    pkgs.haskell-language-server
    pkgs.nix-direnv
    pkgs.coreutils
    pkgs.elixir
    pkgs.python39
    pkgs.adoptopenjdk-hotspot-bin-16
    # pkgs.ruby
    pkgs.rubyPackages.cocoapods
    # python package
    pkgs.python39Packages.black
    pkgs.python39Packages.flake8
    pkgs.python39Packages.yamllint
    pkgs.vim-vint
    pkgs.cpplint
    pkgs.tmuxp
    pkgs.cmake-language-server
    # Rust package
    pkgs.dust
    pkgs.rustfmt
    pkgs.clippy
    pkgs.stylua
    # BeamPackages
    pkgs.beamPackages.elixir_ls
    # Node.js packages
    pkgs.nodePackages.eslint_d
    pkgs.nodePackages.pnpm
    pkgs.nodePackages.bash-language-server
    pkgs.nodePackages.dockerfile-language-server-nodejs
    pkgs.nodePackages.purescript-language-server
    pkgs.nodePackages.yaml-language-server
    pkgs.nodePackages.vls
    pkgs.nodePackages.vim-language-server
    pkgs.nodePackages.typescript
    pkgs.nodePackages.typescript-language-server
    pkgs.nodePackages.pyright
    pkgs.nodePackages.svelte-language-server
    pkgs.nodePackages.purty
    pkgs.nodePackages.prettier
    # Not avaliable
    # pkgs.nodePackages.markdownlint
    # pkgs.nodePackages.markdownlint-cli
    # pkgs.nodePackages.prettier-plugin-sh
    # pkgs.nodePackages.prettier-plugin-toml
    # pkgs.nodePackages.svelte
    # pkgs.nodePackages.prettier-plugin-svelte
    # pkgs.nodePackages.elm-format
    # pkgs.nodePackages."@angular/language-server"
    # pkgs.nodePackages."@prisma/language-server"
    # pkgs.nodePackages.vscode-langservers-extracted
    # pkgs.nodePackages.graphql
    # pkgs.nodePackages.graphql-language-service-cli
    # pkgs.flutter
    pkgs.haskellPackages.hindent
    pkgs.haskellPackages.dhall-lsp-server
  ];

  # use nix-community cache, run once only
  # cachix use nix-community
  system.stateVersion = 4;

  environment.variables = {
    NIX_REMOTE = "daemon";
    GOPATH = "$HOME/go";
    TMUXP_CONFIGDIR = "$HOME/.tmuxp";
    WEZTERM_CONFIG_FILE = "$HOME/.config/wezterm/config.lua";
    CC = "$(which gcc-11)";
    CXX = "$(which g++-11)";
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

  environment.shellAliases.find = "fd";
  environment.shellAliases.grep = "rg";
  environment.shellAliases.vi = "nvim";
  environment.shellAliases.vim = "nvim";
  environment.shellAliases.vimdiff = "nvim -d";
  environment.shellAliases.ls = "exa --icons";
  environment.shellAliases.gcc = "gcc-11";
  environment.shellAliases.cc = "gcc-11";
  environment.shellAliases."g++" = "g++-11";
  environment.shellAliases."c++" = "c++-11";
  environment.shellAliases.pip = "pip3.9";
  environment.shellAliases.pfzf =
    "fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'";
  environment.shellAliases.dotfiles =
    "/run/current-system/sw/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME";
  environment.shellAliases.start = "sh ~/.tmuxp/start.sh";

  environment.interactiveShellInit = ''
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
    # promptInit = "prompt off";
    promptInit = "";
  };

  # programs.fzf = {
  # enable = true;
  # enableBashIntegration = true;
  # enableZshIntegration = true;
  # };

  # programs.direnv = {
  # enable = true;
  # enableNixDirenvIntegration = true;
  # # enableBashIntegration = true;
  # enableZshIntegration = true;
  # };

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
    buildCores = 0;
    gc.automatic = true;
  };

}
