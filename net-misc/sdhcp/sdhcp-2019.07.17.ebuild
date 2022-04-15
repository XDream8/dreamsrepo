# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

COMMIT=5f9956c8706215f8b8887c0beb77ed7d1810ec7a

DESCRIPTION="suckless dhcp client"
HOMEPAGE="https://github.com/michaelforney/sdhcp"
SRC_URI="https://github.com/michaelforney/${PN}/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"

S=${WORKDIR}/${PN}-5f9956c8706215f8b8887c0beb77ed7d1810ec7a

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	emake PREFIX=/usr
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install

	if has_version ">=sys-apps/openrc-0.5.0"; then
		newinitd "${FILESDIR}/${PN}-init.d" sdhcp
		newconfd "${FILESDIR}/${PN}-conf.d" sdhcp
		ewarn "Please do not forget to edit /etc/conf.d/sdhcp"
	fi
}
