# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="maim (make image) takes screenshots of your desktop."
HOMEPAGE="https://github.com/The-Repo-Club/wm-maim"
SRC_URI="https://github.com/The-Repo-Club/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="media-gfx/maim
		x11-misc/xclip"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin "${S}"/usr/bin/wm-maim
}
