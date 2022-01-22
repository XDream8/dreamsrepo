# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit savedconfig toolchain-funcs

DESCRIPTION="a dynamic window manager for X11"
HOMEPAGE="https://github.com/The-Repo-Club/repowm"
SRC_URI="https://github.com/The-Repo-Club/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="xinerama"

RDEPEND="
	media-libs/fontconfig
	x11-libs/libX11
	x11-libs/libXft
	xinerama? ( x11-libs/libXinerama )
"
DEPEND="
	${RDEPEND}
	xinerama? ( x11-base/xorg-proto )
"

src_prepare() {
	default

	sed -i \
		-e "s/ -Os / /" \
		-e "/^\(LDFLAGS\|CFLAGS\|CPPFLAGS\)/{s| = | += |g;s|-s ||g}" \
		config.mk || die

	restore_config config.h
}

src_compile() {
	if use xinerama; then
		emake CC=$(tc-getCC) repowm
	else
		emake CC=$(tc-getCC) XINERAMAFLAGS="" XINERAMALIBS="" repowm
	fi
}

src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" install

	dodoc README.md

	save_config config.h
}
