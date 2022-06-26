# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="RootDO, a simple doas/sudo alternative"
HOMEPAGE="https://codeberg.org/sw1tchbl4d3/rdo"
SRC_URI="https://codeberg.org/sw1tchbl4d3/rdo/archive/${PV}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/rdo"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+zsh-completion"

RDEPEND=""
DEPEND=${RDEPEND}

src_compile() {
	emake
}

src_install() {
	dobin "${S}"/rdo
	chmod u+s "${D}"/usr/bin/rdo || die
	insinto /etc
	newins "${S}"/rdo_sample.conf rdo.conf
	chmod 600 "${D}"/etc/rdo.conf || die

	if use zsh-completion; then
		insinto /usr/share/zsh/site-functions
		doins "${FILESDIR}"/_rdo
	fi
}

pkg_postinst() {
	ewarn "Do not forget to edit /etc/rdo.conf"
}
