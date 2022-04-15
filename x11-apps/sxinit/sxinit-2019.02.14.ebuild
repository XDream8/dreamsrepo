# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

COMMIT=ee81b0ba86c372456731b67fb16acf864f83ece4

DESCRIPTION="simple xinit alternative"
HOMEPAGE="https://github.com/sineemore/sxinit"
SRC_URI="https://github.com/sineemore/${PN}/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"

S=${WORKDIR}/${PN}-ee81b0ba86c372456731b67fb16acf864f83ece4

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="x11-apps/xauth
		x11-base/xorg-server"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	emake
}

src_install() {
	dobin sxinit
}
