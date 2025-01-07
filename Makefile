.PHONY: all clean

all: clean
	@mkdir -p ~/.themes/grun-gnome-shell-theme
	@cp -r gnome-shell ~/.themes/grun-gnome-shell-theme
	@gsettings set org.gnome.shell.extensions.user-theme name "grun-gnome-shell-theme"

clean:
	@gsettings reset org.gnome.shell.extensions.user-theme name
	@rm -rf ~/.themes/grun-gnome-shell-theme

