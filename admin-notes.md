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

- for setting in qt apps configure ~/.Xresources

```
Xcursor.theme: Bibata-Modern-Ice
Xcursor.size: 24
```

than `xrdb -merge ~/.Xresources`

## Set dark theme to telegram-desktop file dialog

- install adwaita-qt6 package
- install qt6ct
- run qt6ct, set Style 'Adwaita-Dark'
