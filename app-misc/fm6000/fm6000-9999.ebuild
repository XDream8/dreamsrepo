# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 toolchain-funcs

DESCRIPTION="Simple Dilbert themed system info-fetching tool "
HOMEPAGE="https://github.com/anhsirk0/fetch-master-6000"
EGIT_REPO_URI="https://github.com/anhsirk0/fetch-master-6000"

LICENSE="AGPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	exeinto /usr/bin
	newexe "${WORKDIR}"/"${P}"/fm6000.pl fm6000

}