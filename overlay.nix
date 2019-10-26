self: super:

let
  callPackage = super.callPackage;
in
{
  mail-attachments-archiver = callPackage ./pkgs/mail-attachments-archiver { };
  ambient-weather-archiver = callPackage ./pkgs/ambient-weather-archiver { };
}
