self: super:

let
  callPackage = super.callPackage;
in
{
  mail-attachments-archiver = callPackage ./pkgs/mail-attachments-archiver { };
}
