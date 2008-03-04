X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/03/04/1
Message-ID: <20080304151001.GC18638@ngolde.de>
Date: Tue, 4 Mar 2008 16:10:02 +0100
From: Nico Golde <oss-security+ml@...lde.de>
To: oss-security@...ts.openwall.com
Subject: request CVE id: insecure handling of DISPLAY in rxvt
Content-Type: text/plain; charset=utf-8

Hi all,
Steve, can I get a CVE id for the following issue in rxvt?

"If the DISPLAY environment is not set, rxvt opens an xterm 
on :0, which on some headless login-server means anyone can setup 
an fake X server waiting for someone loggin in without X 
forwarding to start rxvt by some mistake or by some program (thus 
without even noticing) and getting full shell access to that other 
account."

This is Debian bug 469296[0].

It should be a good idea to check other terminal emulators 
as well.

[0] http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=469296

Cheers
Nico

-- 
Nico Golde - http://www.ngolde.de - nion@...ber.ccc.de - GPG: 0x73647CFF
For security reasons, all text in this mail is double-rot13 encrypted.

Content of type "application/pgp-signature" skipped
