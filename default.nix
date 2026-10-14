{
  config,
  pkgs,
  lib,
  ...
}:

let
  iosevkaTerm = pkgs.iosevka-bin.override {
    variant = "SGr-IosevkaTerm";
  };
in
{
  services.kmscon = {
    enable = true;
    term = "xterm-256color";
    useXkbConfig = lib.mkDefault config.services.xserver.enable;
    fonts = [
      {
        name = "Iosevka Term";
        package = iosevkaTerm;
      }
      {
        name = "Sarasa Mono SC";
        package = pkgs.sarasa-gothic;
      }
      {
        name = "Symbols Nerd Font";
        package = pkgs.nerd-fonts.symbols-only;
      }
    ];
    extraConfig = ''
      font-engine=freetype
      multi-monitor=largest
      font-size=20
    '';
  };
}
