
install::
	cp vcompo-command /usr/local/bin
	cp vcompo-remote /usr/local/bin
	cp vcompo /usr/local/bin

uninstall::
	rm -f /usr/local/bin/vcompo-command
	rm -f /usr/local/bin/vcompo-remote
	rm -f /usr/local/bin/vcompo

netinstall::
	make install
	ssh bramble "cd /usr/src/vcompo-0.2 ; make install"
	ssh thistle "cd /usr/src/vcompo-0.2 ; make install"
	#ssh thicket "cd /usr/src/vcompo-0.2 ; make install"
	#ssh hedge "cd /usr/src/vcompo-0.2 ; make install"
	ssh cres "cd /usr/src/vcompo-0.2 ; make install"
