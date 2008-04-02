X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/04/02/2
Message-ID: <47F3B931.7020609@freethemallocs.com>
Date: Wed, 02 Apr 2008 08:49:53 -0800
From: Jonathan Smith <smithj@...ethemallocs.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
CC: oss-security@...ts.openwall.com
Subject: CVE request: openssh "ForceCommand" improperly implemented
Content-Type: text/plain; charset=utf-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

http://secunia.com/advisories/29602/

https://bugs.gentoo.org/show_bug.cgi?id=215702
https://issues.rpath.com/browse/RPL-2419

It looks to be a rather minor issue since ~/.ssh/rc is usually 0600 and
~/.ssh is usually 0700.

	smithj

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.8 (GNU/Linux)

iEYEARECAAYFAkfzuTEACgkQCG91qXPaRekKzwCdEnSwrkEVCXR8NzZEXCBkpXe/
2O4Ani9EzXE2CUGpYEJj8+P8O06UarYO
=wKkZ
-----END PGP SIGNATURE-----
