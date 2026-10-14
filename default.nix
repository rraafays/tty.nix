{
  config,
  pkgs,
  lib,
  ...
}:

{
  services.kmscon = {
    enable = true;
    term = "xterm-256color";
    useXkbConfig = lib.mkDefault config.services.xserver.enable;
    fonts = [
      {
        name = "Iosevka";
        package = pkgs.iosevka;
      }
      {
        name = "Sarasa Gothic SC";
        package = pkgs.sarasa-gothic;
      }
      {
        name = "Symbols Nerd Font";
        package = pkgs.nerd-fonts.symbols-only;
      }
    ];
    extraConfig = "font-size=12";
  };
}
