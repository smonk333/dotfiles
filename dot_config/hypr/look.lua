-- force gtk4 apps to prefer dark mode:
hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")

-- set a dark theme for gtk3 applications
hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3'")
