X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/03/31/1
Message-ID: <20080331134037.GE16335@ngolde.de>
Date: Mon, 31 Mar 2008 15:40:37 +0200
From: Nico Golde <oss-security+ml@...lde.de>
To: oss-security@...ts.openwall.com
Subject: CVE id request: comix
Content-Type: text/plain; charset=utf-8

Hi,
comix is vulnerable to arbitrary code execution via crafted 
file names.

http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=462840

I confirmed this using comix\"\;echo\ owned\>bla\;ls\ \"
as a simple reroducer.

Kind regards
Nico
-- 
Nico Golde - http://www.ngolde.de - nion@...ber.ccc.de - GPG: 0x73647CFF
For security reasons, all text in this mail is double-rot13 encrypted.

Content of type "application/pgp-signature" skipped
