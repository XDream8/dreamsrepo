# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

COMMIT=ec9e7802f9a399ebdf9acc90d014b6ea75a89fa3

DESCRIPTION="Simple Dilbert themed system info-fetching tool"
HOMEPAGE="https://github.com/anhsirk0/fetch-master-6000"
SRC_URI="https://github.com/anhsirk0/fetch-master-6000/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"

S=${WORKDIR}/fetch-master-6000-${COMMIT}

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+ascii_arts"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	newbin "${S}"/fm6000.pl fm6000

	if use ascii_arts; then
		dodoc -r "${S}"/ascii_arts
	fi
}
