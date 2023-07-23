{ pkgs ? import <nixpkgs> { } }:
let
  mynode = pkgs.nodejs-18_x;
  elmls = pkgs.elmPackages.elm-language-server;
in
pkgs.stdenv.mkDerivation {
  name = "my-shell";
  packages = [  ];
  shellHook = "";
  buildInputs = [ mynode elmls ];
}
