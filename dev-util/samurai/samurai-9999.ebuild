# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs

DESCRIPTION="ninja-compatible build tool written in C"
HOMEPAGE="https://github.com/michaelforney/samurai"
if [[ "${PV}" == *9999 ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/michaelforney/samurai.git"
else
	SRC_URI="https://github.com/michaelforney/samurai/releases/download/${PV}/${P}.tar.gz"
	KEYWORDS="~amd64 ~arm ~arm64 ~x86"
fi

LICENSE="ISC Apache-2.0 MIT"
SLOT="0"
IUSE="+system-ninja"

DEPEND="system-ninja? ( !dev-util/ninja )"

PATCHES=(
	"${FILESDIR}/${P}-null_pointer_fix.patch" #786957
)

src_compile() {
	emake CC="$(tc-getCC)"
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}"/usr install
	if use system-ninja; then
		ln -sf "${D}"/usr/bin/samu "${D}"/usr/bin/ninja || die
	fi
	dodoc README.md
}
