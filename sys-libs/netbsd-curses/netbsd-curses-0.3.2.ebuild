# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="libcurses and dependencies taken from netbsd and brought into a portable shape (at least to musl or glibc)"
HOMEPAGE="https://github.com/sabotage-linux/netbsd-curses"
SRC_URI="https://github.com/sabotage-linux/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

PATCHES=(
	"${FILESDIR}/0000-explicitly-add-required-CPPFLAGS-for-tic.patch"
)

src_compile() {
	emake PREFIX=/usr all-dynamic
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install-dynamic

	ln -sf "${S}"/tic "${D}"/usr/bin/captoinfo
	ln -sf "${S}"/tic "${D}"/usr/bin/infotocap

	ln -sf "${S}"/libterminfo.so "${D}"/usr/lib/libtinfo.so
}
