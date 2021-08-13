# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Instamenu extra scripts"
HOMEPAGE="https://github.com/The-Repo-Club/instamenu-extra"
SRC_URI="https://github.com/The-Repo-Club/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="x11-misc/instamenu"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	:
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install
}
