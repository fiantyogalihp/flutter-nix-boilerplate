{ androidenv }:

androidenv.composeAndroidPackages {
  toolsVersion = "26.1.1";
  platformToolsVersion = "35.0.2";
  buildToolsVersions = [ "34.0.0" "35.0.0" ];
  includeEmulator = false;
  emulatorVersion = "35.1.4";
  platformVersions = [ "28" "29" "30" "31" "32" "33" "34" "35" ];
  includeSources = false;
  includeSystemImages = false;
  systemImageTypes = [ "google_apis_playstore" ];
  abiVersions = [ "armeabi-v7a" "arm64-v8a" ];
  cmakeVersions = [ "3.22.1" "3.30.5" ];
  includeNDK = true;
  ndkVersions = [ "26.3.11579264" ];
  useGoogleAPIs = false;
  useGoogleTVAddOns = false;
}
