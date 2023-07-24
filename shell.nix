{ pkgs ? import <nixpkgs> { } }:
let
  elmls = pkgs.elmPackages.elm-language-server;
  entr = pkgs.entr;
  node = pkgs.nodejs-18_x;
in
pkgs.stdenv.mkDerivation {
  name = "my-shell";
  packages = [  ];
  shellHook = "";
  buildInputs = [
    elmls
    entr
    node
  ];
}
