# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Takes screenshots of your desktop."
HOMEPAGE="https://github.com/The-Repo-Club/win-shot"
SRC_URI="https://github.com/The-Repo-Club/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="media-gfx/imagemagick
		x11-misc/xclip
		x11-misc/xdotool"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin "${S}"/usr/bin/win-shot
}
