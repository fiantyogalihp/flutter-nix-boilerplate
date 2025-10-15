{
  description = "An example project using flutter";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.flake-compat = {
    url = "github:edolstra/flake-compat";
    flake = false;
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
          config.android_sdk.accept_license = true;
        };
      in {
        devShells.default =
          let android = pkgs.callPackage ./nix/android.nix { };
          in pkgs.mkShell {
            buildInputs = with pkgs; [
              # Flutter and Dart
              flutter
              dart

              # Java/Android
              jdk17
              gradle

              # Linux desktop development dependencies
              pkg-config
              cmake
              ninja

              # GTK and graphics libraries
              gtk3
              glib
              cairo
              pango
              gdk-pixbuf
              atk

              # Additional Linux dependencies
              libepoxy
              xorg.libX11
              xorg.libXcursor
              xorg.libXrandr
              xorg.libXinerama
              xorg.libXi
              xorg.libXext

              # From ./nix/*
              android.platform-tools
            ];

            ANDROID_HOME = "${android.androidsdk}/libexec/android-sdk";
            JAVA_HOME = pkgs.jdk17;
            ANDROID_AVD_HOME = (toString ./.) + "/.android/avd";

            # Additional environment variables for Linux desktop
            PKG_CONFIG_PATH = "${pkgs.gtk3.dev}/lib/pkgconfig:${pkgs.glib.dev}/lib/pkgconfig";
            LD_LIBRARY_PATH = "${pkgs.lib.makeLibraryPath (with pkgs; [
              gtk3
              glib
              cairo
              pango
              gdk-pixbuf
              atk
              libepoxy
            ])}";
          };
      });
}
