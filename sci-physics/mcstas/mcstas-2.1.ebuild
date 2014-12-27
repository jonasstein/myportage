# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

DESCRIPTION="A neutron ray-trace simulation package"
HOMEPAGE="http://www.mcstas.org/"
SRC_URI="http://downloads.mcstas.org/mcstas-2.1/linux/mcstas-2.1-src/McStas-2.1-UNIX-src/mcstas-2.1-src.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RDEPEND="dev-perl/perl-tk
		 dev-perl/PDL
		 sci-visualization/gnuplot"
DEPEND="${RDEPEND}"

src_install()
{
		dobin mcstas
}

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
#		dodoc README.txt License.txt
