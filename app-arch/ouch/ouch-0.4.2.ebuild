# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	adler@1.0.2
	aho-corasick@1.0.2
	anstream@0.3.2
	anstyle-parse@0.2.1
	anstyle-query@1.0.0
	anstyle-wincon@1.0.1
	anstyle@1.0.1
	assert_cmd@2.0.12
	atty@0.2.14
	autocfg@1.1.0
	bit-set@0.5.3
	bit-vec@0.6.3
	bitflags@1.3.2
	bitflags@2.3.3
	bstr@1.6.0
	bumpalo@3.13.0
	byteorder@1.4.3
	bytes@1.4.0
	bzip2-sys@0.1.11+1.0.8
	bzip2@0.4.4
	cc@1.0.81
	cfb@0.7.3
	cfg-if@1.0.0
	clap@4.3.19
	clap_builder@4.3.19
	clap_complete@4.3.2
	clap_derive@4.3.12
	clap_lex@0.5.0
	clap_mangen@0.2.12
	colorchoice@1.0.0
	core_affinity@0.8.1
	crc32fast@1.3.2
	crossbeam-channel@0.5.8
	crossbeam-deque@0.8.3
	crossbeam-epoch@0.9.15
	crossbeam-utils@0.8.16
	deranged@0.3.7
	difflib@0.4.0
	doc-comment@0.3.3
	either@1.9.0
	errno-dragonfly@0.1.2
	errno@0.3.2
	fastrand@2.0.0
	filetime@0.2.22
	flate2@1.0.26
	flume@0.10.14
	fnv@1.0.7
	fs-err@2.9.0
	futures-core@0.3.28
	futures-sink@0.3.28
	getrandom@0.2.10
	globset@0.4.13
	gzp@0.11.3
	heck@0.4.1
	hermit-abi@0.1.19
	hermit-abi@0.3.2
	ignore@0.4.20
	infer@0.15.0
	is-terminal@0.4.9
	is_executable@1.0.1
	itertools@0.10.5
	jobserver@0.1.26
	js-sys@0.3.64
	lazy_static@1.4.0
	libc@0.2.147
	libm@0.2.7
	libz-sys@1.1.12
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.5
	lock_api@0.4.10
	log@0.4.19
	lzma-sys@0.1.20
	lzzzz@1.0.4
	memchr@2.5.0
	memoffset@0.9.0
	miniz_oxide@0.7.1
	nanorand@0.7.0
	num-traits@0.2.16
	num_cpus@1.16.0
	once_cell@1.18.0
	parse-display-derive@0.8.2
	parse-display@0.8.2
	pin-project-internal@1.1.3
	pin-project@1.1.3
	pkg-config@0.3.27
	ppv-lite86@0.2.17
	predicates-core@1.0.6
	predicates-tree@1.0.9
	predicates@3.0.3
	proc-macro2@1.0.66
	proptest@1.2.0
	quick-error@1.2.3
	quote@1.0.32
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rand_xorshift@0.3.0
	rayon-core@1.11.0
	rayon@1.7.0
	redox_syscall@0.3.5
	regex-automata@0.3.6
	regex-syntax@0.6.29
	regex-syntax@0.7.4
	regex@1.9.3
	roff@0.2.1
	rustix@0.38.7
	rusty-fork@0.3.0
	same-file@1.0.6
	scopeguard@1.2.0
	serde@1.0.182
	snap@1.1.0
	spin@0.9.8
	strsim@0.10.0
	structmeta-derive@0.2.0
	structmeta@0.2.0
	syn@2.0.28
	tar@0.4.39
	tempfile@3.7.0
	termtree@0.4.1
	test-strategy@0.3.1
	thiserror-impl@1.0.44
	thiserror@1.0.44
	thread_local@1.1.7
	time-core@0.1.1
	time@0.3.25
	ubyte@0.10.3
	unarray@0.1.4
	unicode-ident@1.0.11
	utf8parse@0.2.1
	uuid@1.4.1
	vcpkg@0.2.15
	wait-timeout@0.2.0
	walkdir@2.3.3
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.87
	wasm-bindgen-macro-support@0.2.87
	wasm-bindgen-macro@0.2.87
	wasm-bindgen-shared@0.2.87
	wasm-bindgen@0.2.87
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-targets@0.48.1
	windows_aarch64_gnullvm@0.48.0
	windows_aarch64_msvc@0.48.0
	windows_i686_gnu@0.48.0
	windows_i686_msvc@0.48.0
	windows_x86_64_gnu@0.48.0
	windows_x86_64_gnullvm@0.48.0
	windows_x86_64_msvc@0.48.0
	xattr@0.2.3
	xz2@0.1.7
	zip@0.6.6
	zstd-safe@6.0.6
	zstd-sys@2.0.8+zstd.1.5.5
	zstd@0.12.4
"

inherit cargo shell-completion

DESCRIPTION="A cli utility for easily compressing and decompressing files and directories."
HOMEPAGE="https://github.com/ouch-org/ouch"
SRC_URI="
	${CARGO_CRATE_URIS}
	https://github.com/ouch-org/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+=" BSD MIT Unicode-DFS-2016 ZLIB"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	app-arch/bzip2
	app-arch/xz-utils
	sys-libs/zlib
"
RDEPEND="${DEPEND}"

QA_FLAGS_IGNORED="usr/bin/${PN}"

src_compile() {
	local -x OUCH_ARTIFACTS_FOLDER=artifacts
	cargo_src_compile
}

src_install() {
	cargo_src_install

	doman artifacts/*.1

	newbashcomp "artifacts/${PN}.bash" "${PN}"
	dozshcomp "artifacts/_${PN}"
	dofishcomp "artifacts/${PN}.fish"
}