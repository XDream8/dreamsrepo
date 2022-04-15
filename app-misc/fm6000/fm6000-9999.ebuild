# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Simple Dilbert themed system info-fetching tool"
HOMEPAGE="https://github.com/anhsirk0/fetch-master-6000"
EGIT_REPO_URI="https://github.com/anhsirk0/fetch-master-6000"

LICENSE="GPL-3"
SLOT="0"
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
