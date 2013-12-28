# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
inherit qt4-r2
DESCRIPTION="Interactive program for evaluation of Laue diffraction patterns"
HOMEPAGE="http://clip4.sf.net/"
SRC_URI="mirror://sourceforge/${PN}4/Clip4_beta2_source.zip"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RDEPEND="dev-cpp/eigen"
DEPEND="${RDEPEND}" #Twice dev-cpp/eigen, removed one of them beacuse the other one is in RDEPEND.
# see http://www.gentoo.org/proj/en/desktop/qt/qt4-based-ebuild-howto.xml
# You still need to inherit qt4-r2 to use eqmake4, done so above.
src_configure() {
		eqmake4 "${S}"/clip/Clip4.pro
}
# This is the default implementation, thus the following function can be completely removed:
# src_install() {
#         emake DESTDIR="${D}" install
#         dodoc README CHANGES
# }
# ( http://devmanual.gentoo.org/ebuild-writing/functions/src_install/index.html )
src_unpack() {
		default

		mv "${WORKDIR}"/Clip* "${S}" || die "Failed to move source directory."
}
