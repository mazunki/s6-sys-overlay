# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A default logger wrapper for the s6-log program"
HOMEPAGE="https://www.skarnet.org/software/s6/s6-log.html"
SRC_URI="https://raw.githubusercontent.com/mazunki/s6-sys/main/bin/s6-default-logger -> ${P}"
S="${WORKDIR}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
DEPEND="${DEPEND} sys-apps/s6"  # provides the s6-log program
DEPEND="${DEPEND} dev-lang/execline"  # the script itself uses execlineb	 
DEPEND="${DEPEND} acct-user/s6log acct-group/s6log"  # who owns the created logs

RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	cp "${DISTDIR}/${A}" "${WORKDIR}" || die
}

src_compile() {
	:;
}

src_install() {
	newbin ${P} "${PN}"

	# newinitd "${FILESDIR}"/minecraft-server.initd-r5 minecraft-server
	# newconfd "${FILESDIR}"/minecraft-server.confd-r1 minecraft-server
	# systemd_newunit "${FILESDIR}"/minecraft-server.service minecraft-server@.service

	# readme.gentoo_create_doc
}

