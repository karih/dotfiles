all:
	rm -rf ${HOME}/.mplayer
	ln -s $(shell pwd)/mplayer ${HOME}/.mplayer
