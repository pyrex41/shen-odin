{
  description = "shen-odin (unfinished) — Nix-managed Odin development environment";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  outputs = { nixpkgs, ... }:
    let systems = [ "aarch64-darwin" "aarch64-linux" "x86_64-linux" ]; each = f: nixpkgs.lib.genAttrs systems (system: f nixpkgs.legacyPackages.${system});
    in {
      packages = each (pkgs: { toolchain = pkgs.buildEnv { name = "shen-odin-toolchain"; paths = [ pkgs.odin pkgs.llvmPackages.clang pkgs.gnumake ]; }; default = pkgs.buildEnv { name = "shen-odin-toolchain"; paths = [ pkgs.odin pkgs.llvmPackages.clang pkgs.gnumake ]; }; });
      devShells = each (pkgs: { default = pkgs.mkShell { packages = [ pkgs.odin pkgs.llvmPackages.clang pkgs.gnumake ]; }; });
    };
}
