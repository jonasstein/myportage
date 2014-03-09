# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

# see http://www.gentoo.org/proj/en/desktop/qt/qt4-based-ebuild-howto.xml
# You still need to inherit qt4-r2 to use eqmake4

inherit versionator
DESCRIPTION="A neutron ray-trace simulation package"
HOMEPAGE="http://www.mcstas.org/"
SRC_URI="http://www.mcstas.org/downloads/mcstas-2.0-src-unix.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RDEPEND="dev-perl/perl-tk
		 dev-perl/PDL
		 sci-visualization/gnuplot"
DEPEND="${RDEPEND}"

#src_configure() {
#		eqmake4 "${S}"/Clip4.pro
#}

#src_unpack() {
#		default
#
#		mv "${WORKDIR}"/Clip* "${S}" || die "Failed to move source directory."
#}

#src_prepare()
#{
#		sed -i 's|../eigen|/usr/include/eigen3|' Clip4.pro || die "sed failed"
#		sed -i 's|shell hg|shell true|g' Clip4.pro || die "sed failed"
#}

#src_install()
#{
#		dobin Clip
#		dodoc README.txt License.txt
#}