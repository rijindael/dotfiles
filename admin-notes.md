# Admin notes for X11/dwm configuration

## Cursor

- download cursor tar
- extract: `tar xvf ./Bibata-Modern-Ice.tar.xz -C ~/.local/share/icons/`
- set env: `set -Ux XCURSOR_THEME Bibata-Modern-Ice; set -Ux XCURSOR_SIZE 24`
- for setting in gtk apps configure `~/.config/gtk-3.0/settings.ini`:

```
[Settings]
gtk-cursor-theme-name=Bibata-Modern-Ice
```
