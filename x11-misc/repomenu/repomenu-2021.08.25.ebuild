# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit savedconfig

DESCRIPTION="insta dynamic menu"
HOMEPAGE="https://github.com/The-Repo-Club/repomenu"
SRC_URI="https://github.com/The-Repo-Club/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	x11-libs/libXinerama"
BDEPEND=""

src_prepare() {
	default

	restore_config config.h
}

src_compile() {
	emake CC=$(tc-getCC) repomenu
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" install

	save_config config.h
}
