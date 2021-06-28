# { config, lib, pkgs, ... }:

stdenv.mkDerivation {
  name = "dockfmt";
  src = builtins.fetchGit {
    url = "git@github.com:mrtazz/checkmake.git";
    ref = "master";
  };
  buildPhase = ''
    make
  '';
  installPhase = ''
    mkdir -p $out/bin
    cp checkmake $out/bin
  '';
}
