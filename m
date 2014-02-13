X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/13/6
Message-Id: <20140213193030.88C72C047F@smtp.hushmail.com>
Date: Thu, 13 Feb 2014 19:30:30 +0000
From: "mancha" <mancha1@...h.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request - GnuTLS corrects flaw in certificate verification (3.1.x/3.2.x)
Content-Type: text/plain; charset=utf-8

GnuTLS has just released versions 3.1.21 and 3.2.11 to address
an issue with the handling of v1 CA certificates. According to
the developer in GnuTLS advisory GNUTLS-SA-2014-1: "This issue
can be exploited if there are trusted CAs that issue X.509
version 1 certificates." [1]

[1] http://gnutls.org/security.html

Upstream fix:
https://www.gitorious.org/gnutls/gnutls/commit/b1abfe3d18

Unless already assigned, would you please allocate a CVE for
this issue?

Thank you.

--mancha

