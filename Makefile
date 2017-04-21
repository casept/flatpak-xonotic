all:
	rm -rf xonotic 
	flatpak-builder --repo=repo --ccache xonotic org.xonotic.xonotic.json
	flatpak build-bundle repo xonotic-0.8.2.flatpak org.xonotic.xonotic
clean:
	rm -rf build repo xonotic *.flatpak .flatpak-builder
install:
	flatpak install --user --bundle xonotic-0.8.2.flatpak
uninstall:
	flatpak uninstall --user org.xonotic.xonotic
