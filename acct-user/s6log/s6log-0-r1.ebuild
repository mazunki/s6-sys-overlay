# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="User for the s6 logger"
ACCT_USER_ID=606
ACCT_USER_GROUPS=( "${PN}" )

acct-user_add_deps
