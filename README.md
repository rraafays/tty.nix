# tty

Linux virtual console via [kmscon](https://github.com/kmscon/kmscon): Fontconfig stack tuned for terminal cell metrics (Iosevka **Term**, **Sarasa Mono SC**, Symbols Nerd Font) and `TERM=xterm-256color`.

NixOS only. No `./common` required. Importing this module enables kmscon and replaces kernel `getty@` on virtual terminals.

Uses `iosevka-bin` Term (narrow, uniform glyph widths) instead of the full Iosevka build, and Sarasa **Mono** for CJK fallback so double-width rules match a grid better than Sarasa Gothic.

Adjust `services.kmscon.extraConfig` on the host (`font-size`, etc.). On the VT, kmscon binds **+** / **−** to zoom font size when session-control shortcuts are available.
