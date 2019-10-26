{ stdenv, fetchFromGitHub }:
with import <nixpkgs> { overlays = []; };

stdenv.mkDerivation rec {
  name = "ambient-weather-archiver";
  version = "0.1.0";
  
  src = fetchFromGitHub {
    owner = "johnbenclark";
    repo = "ambient-weather-archiver";
    rev = "v0.1.0";
    sha256 = "07gfqskwk6a9x7yrf32zxdp9xp8ghd544a8m0f3yfp757hqprn95";
  };
  
  buildInputs = [
    python3
  ];

  # skip any default unpacking
  unpackPhase = ":";

  installPhase = "install -m755 -D $src/ambient-weather-archiver.py $out/bin/ambient-weather-archiver";

  meta = {
    description = "Ambient Weather archiver";
  };
}
