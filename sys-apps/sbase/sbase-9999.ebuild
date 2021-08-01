# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="sbase is a collection of unix tools that are portable across unix-systems."
HOMEPAGE="http://core.suckless.org/sbase/"
EGIT_REPO_URI="git://git.suckless.org/sbase"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	emake PREFIX=/opt/sbase
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/opt/sbase install

	ewarn "check the folder /opt/sbase. if you want to use sbase as userbase add /opt/sbase/bin to PATH environment variable"
}
