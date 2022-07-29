# Copyright 1999-2022 Gentoo Authors
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
	emake repowm
}

src_install() {
	for i in repowm repobar repoopen layoutmenu
	do
		dobin $i
	done

	insinto /usr/share/xsessions
	doins repowm.desktop

	doman "${S}"/repowm.1
	dodoc README.md

	save_config config.h
}
