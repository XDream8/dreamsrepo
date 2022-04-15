# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="libcurses and dependencies taken from netbsd and brought into a portable shape"
HOMEPAGE="https://github.com/sabotage-linux/netbsd-curses"
SRC_URI="https://ftp.barfooze.de/pub/sabotage/tarballs/${PN}-${PV}.tar.xz -> ${P}.tar.xz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="!sys-libs/ncurses"

PATCHES=(
	"${FILESDIR}/0000-explicitly-add-required-CPPFLAGS-for-tic.patch"
)

src_compile() {
	emake PREFIX=/usr all-dynamic
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install-dynamic

	ln -sf "${D}"/usr/bin/tic "${D}"/usr/bin/captoinfo || die
	ln -sf "${D}"/usr/bin/tic "${D}"/usr/bin/infotocap || die

	ln -sf "${D}"/usr/lib/libterminfo.so "${D}"/usr/lib/libtinfo.so || die

	ewarn "do not forget to add sys-libs/ncurses to /etc/portage/profile/package.provided"
}
