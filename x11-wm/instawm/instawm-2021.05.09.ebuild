EAPI=7
inherit savedconfig toolchain-funcs

DESCRIPTION="a dynamic window manager for X11"
HOMEPAGE="https://github.com/The-Repo-Club/instawm"
SRC_URI="https://github.com/The-Repo-Club/${PN}/archive/refs/tags/${PV}.tar.gz"

SLOT="0"
KEYWORDS="amd64 ~arm ~arm64 ppc ppc64 x86"
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
		emake CC=$(tc-getCC) instawm
	else
		emake CC=$(tc-getCC) XINERAMAFLAGS="" XINERAMALIBS="" instawm
	fi
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" install

	dodoc README.md

	save_config config.h
}
