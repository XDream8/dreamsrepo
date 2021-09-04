# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="collection of unportable tools, similar in spirit to util-linux but much simpler"
HOMEPAGE="http://core.suckless.org/ubase/"
EGIT_REPO_URI="http://git.suckless.org/ubase"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	emake PREFIX=/usr/local
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr/local install
}
