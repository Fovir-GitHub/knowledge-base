# shell.nix
{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs_20
    pnpm
  ];

  shellHook = ''
    export NODE_ENV=development
    echo "Entering the development environment!"
    echo "Node: $(node -v), pnpm: $(pnpm -v)"

    alias "dev"="pnpm run dev";
    alias "build"="pnpm run build";
    alias "clean"="pnpm run clean";

    trap 'echo "Leaving the development environment!"' EXIT
  '';
}
