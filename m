X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/06/08/1
Message-Id: <A78A4A68-0A9D-4275-8781-D5536A831884@gmail.com>
Date: Tue, 8 Jun 2010 14:32:30 +0200
From: Andrea Di Pasquale <spikey.it@...il.com>
To: oss-security@...ts.openwall.com
Subject: ArpON (Arp handler inspectiON) 2.0 released!
Content-Type: text/plain; charset=utf-8

Hi!

ArpON (Arp handler inspectiON) is a portable handler daemon that make Arp secure in order to avoid Arp Spoofing/Poisoning & co.
This is possible using two kinds of anti Arp Poisoning tecniques, the first is based on SARPI or "Static Arp Inspection", the second on DARPI or"Dynamic Arp Inspection" approach.

Features:

- It replaces Arpwatch & co; ArpON blocks;
- It detects and blocks Arp Poisoning/Spoofing attacks in statically configured networks;
- It detects and blocks Arp Poisoning/Spoofing attacks in dinamically configured (DHCP) networks;
- It detects and blocks unidirectional and bidirectional attacks;
- It manages the network interface into unplug, boot, hibernation and suspension OS features;
- Easily configurable via command line switches, provided that you have root permissions;
- It works in userspace for OS portability reasons;
- Tested against Ettercap, Cain & Abel, dsniff and other tools.

Links:

http://arpon.sourceforge.net
http://arpon.sourceforge.net/documentation.html
http://arpon.sourceforge.net/manpage.html
http://arpon.sourceforge.net/download.html

Thank you,


Andrea Di Pasquale
