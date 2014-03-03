X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/03/2
Message-ID: <20140303110527.1292bce1@redhat.com>
Date: Mon, 3 Mar 2014 11:05:27 +0100
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Subject: GnuTLS GNUTLS-SA-2014-2
Content-Type: text/plain; charset=utf-8

Hi!

New versions of GnuTLS were released today fixing incorrect error
handling during X.509 certificate verification.  This issue could cause
GnuTLS to accept crafted certificate as valid, even if it wasn't issue
by a trusted CA.

http://lists.gnutls.org/pipermail/gnutls-devel/2014-March/006794.html
http://lists.gnutls.org/pipermail/gnutls-devel/2014-March/006795.html
http://gnutls.org/security.html#GNUTLS-SA-2014-2

This got CVE-2014-0092 (not mentioned in the gnutls-devel list release
announcements, but mentioned on the security page).

-- 
Tomas Hoger / Red Hat Security Response Team
