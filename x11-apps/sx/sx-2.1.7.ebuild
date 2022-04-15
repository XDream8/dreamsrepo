# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Start an xorg server"
HOMEPAGE="https://github.com/Earnestly/sx"
SRC_URI="https://github.com/Earnestly/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="x11-apps/xauth
		x11-base/xorg-server"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	true
}

src_install() {
	dobin sx

	doman sx.1
}
