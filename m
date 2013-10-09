X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/10/09/4
Message-Id: <20131009130315.0AFF120360@smtp.hushmail.com>
Date: Wed, 09 Oct 2013 13:03:14 +0000
From: "mancha" <mancha1@...h.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request - Slim 1.3.6 fixes a security issue
Content-Type: text/plain; charset=utf-8

Hello Kurt, vendors, et al.

Slim 1.3.6 fixes a security flaw related to a potential NULL ptr.
dereference when using crypt() from glibc 2.17+ (eglibc 2.17+).
Without the fix, malformed or unsupported salts crash the login
daemon.

Upstream fix: http://git.berlios.de/cgi-
bin/cgit.cgi/slim/commit/?id=fbdfae3b406b1bb6f4e5e440e79b9b8bb8f071f
b

Would you please allocate a CVE for this issue?

Regards,

--mancha

