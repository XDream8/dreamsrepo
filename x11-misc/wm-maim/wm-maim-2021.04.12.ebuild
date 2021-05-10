# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="maim (make image) takes screenshots of your desktop. It has options to take only a region, and relies on slop to query for regions. maim is supposed to be an improved scrot. "
HOMEPAGE="https://github.com/The-Repo-Club/wm-maim"
SRC_URI="https://github.com/The-Repo-Club/${PN}/archive/refs/tags/${PV}.tar.gz"

LICENSE="AGPL-2"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="media-gfx/maim
		x11-misc/xclip"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	exeinto /usr/bin
	newexe "${WORKDIR}"/"${P}"/usr/bin/wm-maim wm-maim
}
