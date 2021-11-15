# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="stub and/or lightweight replacements of the gnu gettext suite(+alpine patches)"
HOMEPAGE="https://github.com/sabotage-linux/gettext-tiny"
SRC_URI="https://github.com/sabotage-linux/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="elibc_glibc elibc_musl"

REQUIRED_USE="
	elibc_musl? ( elibc_musl )
	!elibc_musl? ( elibc_glibc )
"

RDEPEND="!sys-devel/gettext"

PATCHES=(
	"${FILESDIR}/flip-macro-logic.patch"
	"${FILESDIR}/line-length.patch"
	"${FILESDIR}/respect-cflags.patch"
)

src_compile() {
	if use elibc_glibc; then
		emake LIBINTL=NOOP prefix=/usr
	elif use elibc_musl; then
		emake LIBINTL=MUSL prefix=/usr
	fi
}

src_install() {
	if use elibc_glibc; then
		emake LIBINTL=NOOP DESTDIR="${D}" prefix=/usr install
	elif use elibc_musl; then
		emake LIBINTL=MUSL DESTDIR="${D}" prefix=/usr install
	fi
	ewarn "don't forget to add sys-devel/gettext to /etc/portage/profile/package.provided to get full function of gettext-tiny"
}
