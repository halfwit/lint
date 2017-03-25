# lint - X11 based way to lint
# See LICENSE file for copyright and license details.

PREFIX ?= /usr/local

install:
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@sed "s|/usr/local/|${DESTDIR}${PREFIX}|" lint > ${DESTDIR}${PREFIX}/bin/lint
	@chmod 755 ${DESTDIR}${PREFIX}/bin/lint
	@mkdir -p ${DESTDIR}${PREFIX}/share/lint
	@cp -Rf handlers/* ${DESTDIR}${PREFIX}/share/lint/
	@chmod -R 755 ${DESTDIR}${PREFIX}/share/lint/*

.PHONY: install
