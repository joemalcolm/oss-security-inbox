X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/04/15/3
Message-ID: <20080415222411.GB2549@ngolde.de>
Date: Wed, 16 Apr 2008 00:24:11 +0200
From: Nico Golde <oss-security+ml@...lde.de>
To: oss-security@...ts.openwall.com
Subject: CVE id request: cecilia insecure temporary file usage
Content-Type: text/plain; charset=utf-8

Hi,
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=476321
cecilia[0] writes data into a predictable temporary file not 
opening with O_EXCL and opens this up for a symlink attack.

Can I get a CVE id please for this one?

[0] http://cecilia.sourceforge.net/

Kind regards
Nico

-- 
Nico Golde - http://www.ngolde.de - nion@...ber.ccc.de - GPG: 0x73647CFF
For security reasons, all text in this mail is double-rot13 encrypted.

Content of type "application/pgp-signature" skipped
