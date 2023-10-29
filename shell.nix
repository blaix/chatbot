with import <nixpkgs> {};
mkShell {
  buildInputs = [
    # Required for normal readline behavior
    # https://github.com/nix-community/nix-direnv/issues/384
    bashInteractive
    elmPackages.elm
    elmPackages.elm-format
    elmPackages.elm-language-server
  ];
  shellHook = ''
    export ELM_HOME="$PWD/.elm"
  '';
}

