# tty

Linux virtual console via [kmscon](https://github.com/kmscon/kmscon): Fontconfig stack matching `terminal.nix` (Iosevka, Sarasa Gothic SC, Symbols Nerd Font) and `TERM=xterm-256color`.

NixOS only. No `./common` required. Importing this module enables kmscon and replaces kernel `getty@` on virtual terminals.

Adjust `services.kmscon.extraConfig` on the host if you need a different `font-size`.

Clipboard: kmscon has no OSC 52. Import `./terminal` so tmux copy mode and Neovim can reach the session clipboard via `wl-copy` while GNOME is running.
