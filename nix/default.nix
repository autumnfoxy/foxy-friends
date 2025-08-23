{ stdenv, hyprcursor}:
stdenv.mkDerivation {
  pname = "foxy-friends-cursor";
  version = "0.0.0";

  src = ../.;
  nativeBuildInputs = [ hyprcursor ];
  buildPhase = ''
    hyprcursor-util -c ./foxy-friends-cursor
  '';

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/icons/foxy-friends-cursor
    cp -R ./theme_foxy-friends-cursor/* $out/share/icons/foxy-friends-cursor/
    runHook postInstall
  '';
}
