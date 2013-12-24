all:
	rm ${HOME}/.mplayer
	ln -s $(shell pwd)/mplayer ${HOME}/.mplayer
	mkdir -p ${HOME}/bin
	$(foreach bin, $(shell ls $(shell pwd)/bin), rm ${HOME}/bin/$(bin); ln -s $(shell pwd)/bin/$(bin) ${HOME}/bin/$(bin);)
ifeq "$(shell hostname)" "nibbler"
		rm ${HOME}/.xbindkeysrc
		ln -s $(shell pwd)/xbindkeysrc ${HOME}/.xbindkeysrc
endif
