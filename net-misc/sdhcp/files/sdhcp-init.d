#!/sbin/openrc-run
# Copyright 2007-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

command=/usr/sbin/sdhcp
command_args="$sdhcp_interface"
name="Suckless DHCP Client"

depend()
{
	provide net
	need localmount
	use logger network
	after bootmisc modules
	before dns
}
