# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="Schemas for instamenu"
HOMEPAGE="https://github.com/The-Repo-Club/repomenu-schemas"
SRC_URI="https://github.com/The-Repo-Club/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
		gnome-base/gsettings-desktop-schemas"
BDEPEND=""

src_compile() {
	meson_src_compile
}

src_install() {
	meson_src_install
}
