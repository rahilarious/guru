# Copyright 2020-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1 pypi

DESCRIPTION="A lightweight cross-platform wrapper around a webview component"
HOMEPAGE="https://github.com/r0x0r/pywebview"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="gtk qt6"
REQUIRED_USE="|| ( gtk qt6 )"

RDEPEND="
	dev-python/bottle
	dev-python/cryptography
	dev-python/proxy_tools
	gtk? (
		dev-python/pygobject[cairo,${PYTHON_USEDEP}]
		net-libs/webkit-gtk
	)
	qt6? (
		dev-python/pyside[${PYTHON_USEDEP},webengine]
		dev-python/qtpy[${PYTHON_USEDEP},webengine]
	)
"

distutils_enable_tests pytest

RESTRICT="test" # FIXME: tests fail without message
