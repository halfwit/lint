# lint - X11 based way to lint
# See LICENSE file for copyright and license details.

PREFIX ?= /usr/local

install:
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@cp -f lint ${DESTDIR}${PREFIX}/bin
	@chmod 755 ${DESTDIR}${PREFIX}/bin/lint
	@mkdir -p ${DESTDIR}${PREFIX}/share/lint
	@cp -Rf handlers/* ${DESTDIR}${PREFIX}/share/lint/
	@chmod -R 755 ${DESTDIR}${PREFIX}/share/lint/*

.PHONY: install
