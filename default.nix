{ pkgs ? import <nixpkgs> { } }:

pkgs.rustPlatform.buildRustPackage {
  name = "nix-cargo-two-unpinned-dependencies";

  src = ./.;

  cargoLock = {
    lockFile = ./Cargo.lock;
    outputHashes = {
      "libc-0.2.126" = "0000000000000000000000000000000000000000000000000000000000000000";
    };
  };
}
