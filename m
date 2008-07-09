X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/07/09/8
Message-ID: <20080709144854.GA28399@ngolde.de>
Date: Wed, 9 Jul 2008 16:48:54 +0200
From: Nico Golde <oss-security+ml@...lde.de>
To: oss-security@...ts.openwall.com
Subject: CVE id request: projectl
Content-Type: text/plain; charset=utf-8

Hi,
the projectl game seems to be vulnerable to a symlink 
attack. It writes its preferences file to the current 
working directory to a hardcoded file name and following 
symlinks when doing this.

http://bugs.debian.org/489988

Can I get a CVE identifier for this?

Thanks!
Nico

-- 
Nico Golde - http://www.ngolde.de - nion@...ber.ccc.de - GPG: 0x73647CFF
For security reasons, all text in this mail is double-rot13 encrypted.

Content of type "application/pgp-signature" skipped
