# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYPI_NO_NORMALIZE=1
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{{11..13},13t} )

inherit distutils-r1 pypi

DESCRIPTION="A pass extension for auditing your password repository. "
HOMEPAGE="https://github.com/roddhjav/pass-audit"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
# Tests seems broken
RESTRICT="test"

DEPEND="app-admin/pass"
RDEPEND="${DEPEND}"

src_prepare() {
	# Wrokaround for #921706
	echo -e "from setuptools import setup\nsetup()" > setup.py || die

	default
}

src_install() {
	distutils-r1_src_install

	doman share/man/man1/pass-audit.1

	exeinto /usr/lib/password-store/extensions
	doexe audit.bash
}
