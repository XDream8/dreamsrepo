# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="Schemas for instawm"
HOMEPAGE="https://github.com/The-Repo-Club/instawm-schemas"
SRC_URI="https://github.com/The-Repo-Club/${PN}/archive/refs/tags/${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-util/ninja
        dev-util/meson"

src_compile() {
	meson_src_compile
}

src_install() {
	meson_src_install

	exeinto /usr/bin
	newexe "${WORKDIR}"/"${P}"/instawm-schemas instawm-schemas

}
