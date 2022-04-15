# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="ungoogled chromium binary for musl libc"
HOMEPAGE="https://github.com/Cubified/ungoogled-chromium-binaries"
SRC_URI="https://github.com/Cubified/ungoogled-chromium-binaries/releases/download/${PV}.4183.102-1.musl1/ungoogled-chromium_${PV}.4183.102-1.musl1_linux.tar.xz"

S="${WORKDIR}/ungoogled-chromium_${PV}.4183.102-1.musl1_linux"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="elibc_musl"

REQUIRED_USE="elibc_musl"

DEPEND="media-libs/mesa:=
		x11-libs/libX11:=
		x11-libs/libXcomposite:=
		x11-libs/libXcursor:=
		x11-libs/libXdamage:=
		x11-libs/libXext:=
		x11-libs/libXfixes:=
		>=x11-libs/libXi-1.6.0:=
		x11-libs/libXrandr:=
		x11-libs/libXrender:=
		x11-libs/libXtst:=
		x11-libs/libxcb:=
		x11-libs/libxshmfence:=

		>=net-print/cups-1.3.11:=
		dev-libs/expat:=
		dev-libs/glib:2
		dev-libs/nspr:=
		>=dev-libs/nss-3.26:=
		>=media-libs/alsa-lib-1.0.19:=
		media-libs/fontconfig:=
		>=media-libs/freetype-2.11.0-r1:=
		sys-apps/dbus:=
		sys-apps/pciutils:=
		x11-libs/cairo:=
		x11-libs/gdk-pixbuf:2
		x11-libs/pango:=

		>=app-accessibility/at-spi2-atk-2.26:2
		>=app-accessibility/at-spi2-core-2.26:2
		>=dev-libs/atk-2.26
		x11-libs/gtk+:3[X]
		"
RDEPEND="${DEPEND}
	virtual/opengl
	virtual/ttf-fonts
	!www-client/ungoogled-chromium-bin"

QA_PREBUILT="opt/ungoogled-chromium/*"

src_install() {
	mkdir -p "${D}"/opt "${D}"/usr/bin || die
	cp -r "${S}" "${D}"/opt/ungoogled-chromium || die
	ln -sf "${D}"/opt/ungoogled-chromium/chrome "${D}"/usr/bin/chromium || die
}
