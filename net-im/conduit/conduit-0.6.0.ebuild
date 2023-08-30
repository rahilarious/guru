# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	adler@1.0.2
	ahash@0.8.3
	aho-corasick@1.0.2
	allocator-api2@0.2.15
	anstyle@1.0.1
	arc-swap@1.6.0
	arrayref@0.3.7
	arrayvec@0.7.4
	assign@1.1.1
	async-trait@0.1.68
	atomic@0.5.3
	autocfg@1.1.0
	axum@0.6.18
	axum-core@0.3.4
	axum-server@0.5.1
	base64@0.13.1
	base64@0.21.2
	base64ct@1.6.0
	bincode@1.3.3
	bindgen@0.65.1
	bitflags@1.3.2
	bitflags@2.3.2
	blake2b_simd@1.0.1
	block-buffer@0.9.0
	block-buffer@0.10.4
	bumpalo@3.13.0
	bytemuck@1.13.1
	byteorder@1.4.3
	bytes@1.4.0
	bzip2-sys@0.1.11+1.0.8
	cc@1.0.79
	cexpr@0.6.0
	cfg-if@1.0.0
	clang-sys@1.6.1
	clap@4.3.8
	clap_builder@4.3.8
	clap_derive@4.3.2
	clap_lex@0.5.0
	color_quant@1.1.0
	const-oid@0.9.2
	const_panic@0.2.8
	constant_time_eq@0.1.5
	constant_time_eq@0.2.6
	core-foundation@0.9.3
	core-foundation-sys@0.8.4
	cpufeatures@0.2.8
	crc@3.0.1
	crc-catalog@2.2.0
	crc32fast@1.3.2
	crossbeam@0.8.2
	crossbeam-channel@0.5.8
	crossbeam-deque@0.8.3
	crossbeam-epoch@0.9.15
	crossbeam-queue@0.3.8
	crossbeam-utils@0.8.16
	crypto-common@0.1.6
	curve25519-dalek@3.2.0
	dashmap@5.4.0
	data-encoding@2.4.0
	der@0.6.1
	digest@0.9.0
	digest@0.10.7
	directories@4.0.1
	dirs-sys@0.3.7
	ed25519@1.5.3
	ed25519-dalek@1.0.1
	either@1.8.1
	encoding_rs@0.8.32
	enum-as-inner@0.5.1
	equivalent@1.0.0
	fallible-iterator@0.2.0
	fallible-streaming-iterator@0.1.9
	fdeflate@0.3.0
	figment@0.10.10
	flate2@1.0.26
	fnv@1.0.7
	form_urlencoded@1.2.0
	fs2@0.4.3
	futures@0.3.28
	futures-channel@0.3.28
	futures-core@0.3.28
	futures-executor@0.3.28
	futures-io@0.3.28
	futures-macro@0.3.28
	futures-sink@0.3.28
	futures-task@0.3.28
	futures-util@0.3.28
	generic-array@0.14.7
	getrandom@0.1.16
	getrandom@0.2.10
	gif@0.12.0
	glob@0.3.1
	h2@0.3.19
	hashbrown@0.12.3
	hashbrown@0.14.0
	hashlink@0.8.3
	headers@0.3.8
	headers-core@0.2.0
	heck@0.4.1
	hermit-abi@0.2.6
	hmac@0.12.1
	hostname@0.3.1
	http@0.2.9
	http-body@0.4.5
	http-range-header@0.3.0
	httparse@1.8.0
	httpdate@1.0.2
	hyper@0.14.26
	hyper-rustls@0.23.2
	idna@0.2.3
	idna@0.4.0
	image@0.24.6
	indexmap@1.9.3
	indexmap@2.0.0
	inlinable_string@0.1.15
	integer-encoding@3.0.4
	ipconfig@0.3.2
	ipnet@2.7.2
	itertools@0.11.0
	itoa@1.0.6
	jobserver@0.1.26
	jpeg-decoder@0.3.0
	js-sys@0.3.64
	js_int@0.2.2
	js_option@0.1.1
	jsonwebtoken@8.3.0
	konst@0.3.5
	konst_kernel@0.3.5
	lazy_static@1.4.0
	lazycell@1.3.0
	libc@0.2.146
	libloading@0.7.4
	librocksdb-sys@0.11.0+8.1.1
	libsqlite3-sys@0.26.0
	libz-sys@1.1.9
	linked-hash-map@0.5.6
	lmdb-rkv-sys@0.11.2
	lock_api@0.4.10
	log@0.4.19
	lru-cache@0.1.2
	lz4-sys@1.9.4
	maplit@1.0.2
	match_cfg@0.1.0
	matchers@0.1.0
	matches@0.1.10
	matchit@0.7.0
	memchr@2.5.0
	memoffset@0.7.1
	memoffset@0.9.0
	mime@0.3.17
	minimal-lexical@0.2.1
	miniz_oxide@0.7.1
	mio@0.8.8
	nix@0.26.2
	nom@7.1.3
	nu-ansi-term@0.46.0
	num-bigint@0.4.3
	num-integer@0.1.45
	num-rational@0.4.1
	num-traits@0.2.15
	num_cpus@1.15.0
	once_cell@1.18.0
	opaque-debug@0.3.0
	openssl-probe@0.1.5
	opentelemetry@0.18.0
	opentelemetry-jaeger@0.17.0
	opentelemetry-semantic-conventions@0.10.0
	opentelemetry_api@0.18.0
	opentelemetry_sdk@0.18.0
	ordered-float@1.1.1
	overload@0.1.1
	page_size@0.4.2
	parking_lot@0.12.1
	parking_lot_core@0.9.8
	paste@1.0.12
	pear@0.2.4
	pear_codegen@0.2.4
	peeking_take_while@0.1.2
	pem@1.1.1
	percent-encoding@2.3.0
	persy@1.4.4
	pin-project@1.1.0
	pin-project-internal@1.1.0
	pin-project-lite@0.2.9
	pin-utils@0.1.0
	pkcs8@0.9.0
	pkg-config@0.3.27
	png@0.17.9
	ppv-lite86@0.2.17
	prettyplease@0.2.9
	proc-macro-crate@1.3.1
	proc-macro2@1.0.61
	proc-macro2-diagnostics@0.10.0
	quick-error@1.2.3
	quote@1.0.28
	rand@0.7.3
	rand@0.8.5
	rand_chacha@0.2.2
	rand_chacha@0.3.1
	rand_core@0.5.1
	rand_core@0.6.4
	rand_hc@0.2.0
	redox_syscall@0.2.16
	redox_syscall@0.3.5
	redox_users@0.4.3
	regex@1.8.4
	regex-automata@0.1.10
	regex-syntax@0.6.29
	regex-syntax@0.7.2
	resolv-conf@0.7.0
	ring@0.16.20
	rocksdb@0.21.0
	rusqlite@0.29.0
	rust-argon2@1.0.0
	rustc-hash@1.1.0
	rustls@0.20.8
	rustls@0.21.2
	rustls-native-certs@0.6.3
	rustls-pemfile@0.2.1
	rustls-pemfile@1.0.2
	rustls-webpki@0.100.1
	rustversion@1.0.12
	ryu@1.0.13
	schannel@0.1.21
	scopeguard@1.1.0
	sct@0.7.0
	sd-notify@0.4.1
	security-framework@2.9.1
	security-framework-sys@2.9.0
	serde@1.0.164
	serde_derive@1.0.164
	serde_html_form@0.2.0
	serde_json@1.0.99
	serde_path_to_error@0.1.11
	serde_spanned@0.6.3
	serde_urlencoded@0.7.1
	serde_yaml@0.9.22
	sha-1@0.10.1
	sha1@0.10.5
	sha2@0.9.9
	sha2@0.10.7
	sharded-slab@0.1.4
	shlex@1.1.0
	signal-hook-registry@1.4.1
	signature@1.6.4
	simd-adler32@0.3.5
	simple_asn1@0.6.2
	slab@0.4.8
	smallvec@1.10.0
	socket2@0.4.9
	socket2@0.5.3
	spin@0.5.2
	spki@0.6.0
	static_assertions@1.1.0
	subslice@0.2.3
	subtle@2.5.0
	syn@1.0.109
	syn@2.0.21
	sync_wrapper@0.1.2
	synchronoise@1.0.1
	thiserror@1.0.40
	thiserror-impl@1.0.40
	thread_local@1.1.7
	threadpool@1.8.1
	thrift@0.16.0
	tikv-jemalloc-ctl@0.5.0
	tikv-jemalloc-sys@0.5.3+5.3.0-patched
	tikv-jemallocator@0.5.0
	time@0.3.22
	time-core@0.1.1
	time-macros@0.2.9
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio@1.28.2
	tokio-macros@2.1.0
	tokio-rustls@0.23.4
	tokio-rustls@0.24.1
	tokio-socks@0.5.1
	tokio-stream@0.1.14
	tokio-util@0.7.8
	toml@0.7.5
	toml_datetime@0.6.3
	toml_edit@0.19.11
	tower@0.4.13
	tower-http@0.4.1
	tower-layer@0.3.2
	tower-service@0.3.2
	tracing@0.1.37
	tracing-attributes@0.1.26
	tracing-core@0.1.31
	tracing-flame@0.2.0
	tracing-log@0.1.3
	tracing-opentelemetry@0.18.0
	tracing-subscriber@0.3.17
	trust-dns-proto@0.22.0
	trust-dns-resolver@0.22.0
	try-lock@0.2.4
	typenum@1.16.0
	typewit@1.4.0
	uncased@0.9.9
	unicode-bidi@0.3.13
	unicode-ident@1.0.9
	unicode-normalization@0.1.22
	unsafe-libyaml@0.2.8
	unsigned-varint@0.7.1
	untrusted@0.7.1
	url@2.4.0
	uuid@1.3.4
	valuable@0.1.0
	vcpkg@0.2.15
	version_check@0.9.4
	want@0.3.1
	wasi@0.9.0+wasi-snapshot-preview1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.87
	wasm-bindgen-backend@0.2.87
	wasm-bindgen-futures@0.4.37
	wasm-bindgen-macro@0.2.87
	wasm-bindgen-macro-support@0.2.87
	wasm-bindgen-shared@0.2.87
	web-sys@0.3.64
	webpki@0.22.0
	weezl@0.1.7
	widestring@1.0.2
	wildmatch@2.1.1
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-sys@0.42.0
	windows-sys@0.48.0
	windows-targets@0.48.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.0
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.0
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.0
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.0
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.0
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.0
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.0
	winnow@0.4.7
	winreg@0.7.0
	winreg@0.50.0
	yansi@0.5.1
	zeroize@1.6.0
	zeroize_derive@1.4.2
	zigzag@0.1.0
	zstd-sys@2.0.8+zstd.1.5.5
"

declare -A GIT_CRATES=(
	[ruma]="https://github.com/ruma/ruma;3bd58e3c899457c2d55c45268dcb8a65ae682d54;ruma-%commit%/crates/ruma"
	[reqwest]="https://github.com/timokoesters/reqwest;57b7cf4feb921573dfafad7d34b9ac6e44ead0bd"
	[heed]="https://github.com/timokoesters/heed;f6f825da7fb2c758867e05ad973ef800a6fe1d5d;heed-%commit%/heed"
)

inherit cargo systemd

COMMIT="0c2cfda3ae923d9e922d5edf379e4d8976a52d4e"
DESCRIPTION="A Matrix homeserver written in Rust"
HOMEPAGE="https://gitlab.com/famedly/conduit"
SRC_URI="https://gitlab.com/famedly/${PN}/-/archive/v${PV}/${P}.tar.bz2
	${CARGO_CRATE_URIS}
"

S="${WORKDIR}/${PN}-v${PV}-${COMMIT}"

LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 CC0-1.0 ISC MIT MPL-2.0 Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="acct-user/conduit"
DEPEND="${RDEPEND}"
BDEPEND="sys-devel/clang
	>=virtual/rust-1.70.0
"

QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install() {
	cargo_src_install

	keepdir "/var/lib/matrix-conduit"
	fowners conduit:conduit "/var/lib/matrix-conduit"
	fperms 700 "/var/lib/matrix-conduit"

	insinto "/etc/conduit"
	doins "${FILESDIR}/conduit.toml"
	newinitd "${FILESDIR}/conduit.initd" "conduit"
	newconfd "${FILESDIR}/conduit.confd" "conduit"
	systemd_dounit "${FILESDIR}/conduit.service"
}
