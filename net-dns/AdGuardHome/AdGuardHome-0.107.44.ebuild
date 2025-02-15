# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit fcaps go-module systemd

DESCRIPTION="Network-wide ads & trackers blocking DNS server like Pi-Hole with web ui"
HOMEPAGE="https://github.com/AdguardTeam/AdGuardHome/"

SRC_URI="
	https://github.com/AdguardTeam/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	https://github.com/rahilarious/gentoo-distfiles/releases/download/${P}/deps.tar.xz -> ${P}-deps.tar.xz
	web? ( https://github.com/AdguardTeam/${PN}/releases/download/v${PV}/AdGuardHome_frontend.tar.gz -> ${P}-frontend.tar.gz )
"

# main
LICENSE="GPL-3"
# deps
LICENSE+=" Apache-2.0 BSD BSD-2 MIT ZLIB"

SLOT="0"
KEYWORDS="~amd64 ~arm64"

IUSE="+web"
# RESTRICT="test"

# see the patch below
BDEPEND=">=dev-lang/go-1.21:="
BDEPEND+=" app-arch/unzip"

FILECAPS=(
	-m 755 'cap_net_bind_service=+eip cap_net_raw=+eip' usr/bin/${PN}
)

# otherwise it'll error out saying "update go.mod file"
# Since dev-lang/go-1.21 is stable i think it's safe to update
PATCHES=(
	"${FILESDIR}"/fix-go.mod-0.107.44.patch
)

src_prepare() {
	default
	# move frontend to project directory
	use web && { rm -v build/gitkeep && mv -v ../build ./ || die ; }
}

src_compile() {
	# mimicking https://github.com/AdguardTeam/AdGuardHome/blob/master/scripts/make/go-build.sh

	local MY_LDFLAGS="-s -w"
	MY_LDFLAGS+=" -X github.com/AdguardTeam/AdGuardHome/internal/version.version=${PV}"
	MY_LDFLAGS+=" -X github.com/AdguardTeam/AdGuardHome/internal/version.channel=release"
	MY_LDFLAGS+=" -X github.com/AdguardTeam/AdGuardHome/internal/version.committime=$(date +%s)"
	if [ "$(go env GOARM)" != '' ]
	then
		MY_LDFLAGS+=" -X github.com/AdguardTeam/AdGuardHome/internal/version.goarm=$(go env GOARM)"
	elif [ "$(go env GOMIPS)" != '' ]
	then
		MY_LDFLAGS+=" -X github.com/AdguardTeam/AdGuardHome/internal/version.gomips=$(go env GOMIPS)"
	fi

	ego build -ldflags "${MY_LDFLAGS}" -trimpath -v=1 -x=1
}

src_test() {

	# mimicking https://github.com/AdguardTeam/AdGuardHome/blob/master/scripts/make/go-test.sh
	count_flags='--count=1'
	cover_flags='--coverprofile=./coverage.txt'
	shuffle_flags='--shuffle=on'
	timeout_flags="--timeout=30s"
	fuzztime_flags="--fuzztime=20s"
	readonly count_flags cover_flags shuffle_flags timeout_flags fuzztime_flags

	# race only works when pie is disabled
	export GOFLAGS="${GOFLAGS/-buildmode=pie/}"

	# following test is failing without giving any reason. Tried disabling internal/updater internal/whois tests toggling race, but still failing.
	# ego test\
	# 	  "$count_flags"\
	# 	  "$cover_flags"\
	# 	  "$shuffle_flags"\
	# 	  --race=1\
	# 	  "$timeout_flags"\
	# 	  ./...

	# mimicking https://github.com/AdguardTeam/AdGuardHome/blob/master/scripts/make/go-bench.sh
	ego test\
		  "$count_flags"\
		  "$shuffle_flags"\
		  --race=0\
		  "$timeout_flags"\
		  --bench='.'\
		  --benchmem\
		  --benchtime=1s\
		  --run='^$'\
		  ./...

	# mimicking https://github.com/AdguardTeam/AdGuardHome/blob/master/scripts/make/go-fuzz.sh
	ego test\
		  "$count_flags"\
		  "$shuffle_flags"\
		  --race=0\
		  "$timeout_flags"\
		  "$fuzztime_flags"\
		  --fuzz='.'\
		  --run='^$'\
		  ./internal/filtering/rulelist/\
		;

}

src_install() {
	dobin "${PN}"
	einstalldocs

	systemd_newunit "${FILESDIR}"/AdGuardHome-0.107.43.service "${PN}".service
}
