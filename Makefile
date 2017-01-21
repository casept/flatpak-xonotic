all:
	rm -rf xonotic
	flatpak-builder --repo=repo --ccache xonotic org.xonotic.xonotic.json
