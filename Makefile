INSTALL_PATH = ~/.local/share/gnome-shell/extensions
INSTALL_NAME = nordvpn-local@robvk.uk

install: uninstall
	mkdir -p $(INSTALL_PATH)/$(INSTALL_NAME)
	cp -r --preserve=timestamps ./* $(INSTALL_PATH)/$(INSTALL_NAME)
	echo Installed in $(INSTALL_PATH)/$(INSTALL_NAME)

uninstall:
	rm -rf $(INSTALL_PATH)/$(INSTALL_NAME)

.SILENT: install uninstall
