X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/01/21/3
Message-ID: <52DE8417.1040902@fifthhorseman.net>
Date: Tue, 21 Jan 2014 09:28:39 -0500
From: Daniel Kahn Gillmor <dkg@...thhorseman.net>
To: oss-security@...ts.openwall.com, 736247@...s.debian.org
Subject: Fwd: [Python-modules-team] Bug#736247: python-xdg: get_runtime_dir(strict=False): insecure use of /tmp
Content-Type: text/plain; charset=utf-8

as reported by Jakub Wilk in http://bugs.debian.org/736247, there is a
TOCTOU failure in python's xdg module (see attached message).

Could a CVE be assigned to this?

	--dkg

Download attachment "[Python-modules-team] Bug#736247: python-xdg: get_runtime_dir(strict=False):
 insecure use of /tmp.eml" of type "message/rfc822" (5796 bytes)

Download attachment "signature.asc" of type "application/pgp-signature" (1011 bytes)
