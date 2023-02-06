# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..11} )

inherit distutils-r1

DESCRIPTION="Python library for importing Wavefront .obj files"
HOMEPAGE="https://github.com/pywavefront/PyWavefront https://pypi.org/project/PyWavefront"
SRC_URI="https://github.com/pywavefront/PyWavefront/archive/refs/tags/${PV}.tar.gz -> v${PV}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND=""
BDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]
	test? (
		dev-python/pytest[${PYTHON_USEDEP}]
		dev-python/mock[${PYTHON_USEDEP}]
	 )
"
DEPEND="${BDEPEND}"

distutils_enable_tests pytest

# src_test() {
# 	virtx distutils-r1_src_test
# }
# python_test() {
# 	rm "${S}/tests/test_local.py"
# 	cd "${T}" || die
# 	epytest "${S}"/tests
# }
