# shell.nix
{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs_20
    pnpm
  ];

  shellHook = ''
    export NODE_ENV=development
    echo "Node: $(node -v), pnpm: $(pnpm -v)"
  '';
}
