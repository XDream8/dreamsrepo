# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit savedconfig toolchain-funcs

DESCRIPTION="insta dynamic menu"
HOMEPAGE="https://github.com/The-Repo-Club/repomenu"
SRC_URI="https://github.com/The-Repo-Club/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="xinerama"

DEPEND="
	xinerama? ( x11-libs/libXinerama )
	x11-libs/libXft
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	default

	sed -i \
        -e "s/ -Os / /" \
        -e "/^\(LDFLAGS\|CFLAGS\|CPPFLAGS\)/{s| = | += |g;s|-s ||g}" \
        -e "/^X11LIB/{s:/usr/X11R6/lib:/usr/$(get_libdir)/X11:}" \
        -e '/^X11INC/{s:/usr/X11R6/include:/usr/include/X11:}' \
        config.mk || die

	if ! use xinerama; then
		sed -i \
			-e "/XINERAMALIBS  = -lXinerama/d" \
			-e "/XINERAMAFLAGS = -DXINERAMA/d" \
		config.mk || die
	fi

	restore_config config.h
}

src_compile() {
	emake repomenu
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" install

	save_config config.h
}
