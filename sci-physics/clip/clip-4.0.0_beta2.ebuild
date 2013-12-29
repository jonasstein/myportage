# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
# see http://www.gentoo.org/proj/en/desktop/qt/qt4-based-ebuild-howto.xml
# You still need to inherit qt4-r2 to use eqmake4
inherit qt4-r2 versionator
DESCRIPTION="Interactive program for evaluation of Laue diffraction patterns"
HOMEPAGE="http://clip4.sf.net/"
SRC_URI="mirror://sourceforge/clip4/Clip4_$(get_version_component_range 4)_source.zip"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RDEPEND="dev-cpp/eigen"
DEPEND="${RDEPEND}
		dev-vcs/mercurial"

src_configure() {
		eqmake4 "${S}"/Clip4.pro
}

src_unpack() {
		default

		mv "${WORKDIR}"/Clip* "${S}" || die "Failed to move source directory."
}

src_prepare()
{
		sed -i 's|../eigen|/usr/include/eigen3|' Clip4.pro || die "sed failed"
		sed -i 's|shell hg|shell true|g' Clip4.pro || die "sed failed"
}

src_install()
{
		dobin Clip
		dodoc README.txt License.txt
}
