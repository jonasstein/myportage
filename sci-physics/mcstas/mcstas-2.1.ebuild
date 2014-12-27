# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

#SRC_URI="http://downloads.mcstas.org/mcstas-2.1/linux/mcstas-2.1-src/McStas-2.1-UNIX-src/mcstas-2.1-src.tar.gz"

MY_P=${mcstas-2.1/linux/mcstas-2.1-src/McStas-2.1-UNIX-src/mcstas-2.1-src}
SRC_URI="http://downloads.mcstas.org/${MY_P}.tar.gz"
S=${WORKDIR}/${MY_P}

DESCRIPTION="A neutron ray-trace simulation package"
HOMEPAGE="http://www.mcstas.org/"

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
	doman mcstas
	doman mcformat
}
