# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
DESCRIPTION="Interactive program for evaluation of Laue diffraction patterns"

HOMEPAGE="http://clip4.sf.net/"

SRC_URI="mirror://sourceforge/clip4/Clip4_beta2_source.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RDEPEND="dev-cpp/eigen"
DEPEND="${RDEPEND}
	dev-cpp/eigen"

# see http://www.gentoo.org/proj/en/desktop/qt/qt4-based-ebuild-howto.xml
src_configure() {
	eqmake4 "${S}"/clip/Clip4.pro
}

src_install() {
	emake DESTDIR="${D}" install
	dodoc README CHANGES
}
