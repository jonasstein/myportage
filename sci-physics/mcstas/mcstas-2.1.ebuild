# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit cmake-utils

SRC_URI="http://downloads.mcstas.org/mcstas-2.1/linux/mcstas-2.1-src/McStas-2.1-UNIX-src/mcstas-2.1-src.tar.gz"

S=${WORKDIR}/${P}-src

DESCRIPTION="A neutron ray-trace simulation package"
HOMEPAGE="http://www.mcstas.org/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RDEPEND="dev-perl/perl-tk
		 dev-perl/PDL
		 sci-visualization/gnuplot"

DEPEND="${RDEPEND}"

# no idea what it does, but blender uses it:
src_compile() {
	cmake-utils_src_compile
}

# no idea what it does, but blender uses it:
src_install() {
	local i
	}
