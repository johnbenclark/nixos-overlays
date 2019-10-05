{ stdenv, fetchFromGitHub }:
with import <nixpkgs> { overlays = []; };

stdenv.mkDerivation rec {
  name = "mail-attachment-archiver";
  version = "0.1.0";
  
  src = fetchFromGitHub {
    owner = "johnbenclark";
    repo = "mail-attachments-archiver";
    rev = "v0.1.0";
    sha256 = "0csnjxrbznnpq7w49r4npk5pdyzk0d6ad0qw85bma34xjy8nbimb";
  };
  
  buildInputs = [
    python3
  ];

  # skip any default unpacking
  unpackPhase = ":";

  installPhase = "install -m755 -D $src/mail-attachments-archiver.py $out/bin/mail-attachments-archiver";

  meta = {
    description = "Mail attachment archiver";
  };
}
