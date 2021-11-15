# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="The GNU C Library Compatibility Layer for Adelie Linux"
HOMEPAGE="https://git.adelielinux.org/adelie/gcompat"
SRC_URI="https://git.adelielinux.org/adelie/${PN}/-/archive/${PV}/${P}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="sys-libs/musl
		!sys-libs/glibc"

src_compile() {
	emake LINKER_PATH=/lib/ld-musl-x86_64.so.1 LOADER_NAME=ld-linux-x86-64.so.2
}

src_install() {
	emake DESTDIR="${D}" LINKER_PATH=/lib/ld-musl-x86_64.so.1 LOADER_NAME=ld-linux-x86-64.so.2 install

	mkdir -p "${D}"/lib64
	ln -sf "${D}"/lib/ld-linux-x86-64.so.2 "${D}"/lib64/ld-linux-x86-64.so.2
}
