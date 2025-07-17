{
  description = "Dev shell with Node.js and pnpm";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = {
    self,
    pkgs,
  }: {
    devShells.default = pkgs.lib.mkShell {
      pkgs = import pkgs {system = "x86_64-linux";};
      buildInputs = with pkgs; [
        nodejs_20
        pnpm
      ];
      shellHook = ''
        export NODE_ENV=development
        echo "Entering the development environment!"
        echo "Node: $(node -v), pnpm: $(pnpm -v)"

        alias "dev"="pnpm run dev"
        alias "build"="pnpm run build"
        alias "clean"="pnpm run clean"

        trap 'echo "Leaving the development environment!"' EXIT
      '';
    };
  };
}
