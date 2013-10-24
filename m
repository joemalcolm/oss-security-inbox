X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/10/24/2
Message-ID: <20131024140409.GF13413@suse.de>
Date: Thu, 24 Oct 2013 16:04:10 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Request: gnutls/libdane buffer overflow
Content-Type: text/plain; charset=utf-8

Hi,

GNUTLS just posted a security adivsory which needs a CVE:

http://www.gnutls.org/security.html#GNUTLS-SA-2013-3
GNUTLS-SA-2013-3
Denial of service
This vulnerability affects the DANE library of gnutls 3.1.x and gnutls
3.2.x. A server that returns more 4 DANE entries could corrupt the memory
of a requesting client.  Recommendation: Upgrade to the latest gnutls
version (3.1.15 or 3.2.5)

Commit for 3.1:
https://gitorious.org/gnutls/gnutls/commit/916deedf41604270ac398314809e8377476433db

Commit for 3.2:
https://gitorious.org/gnutls/gnutls/commit/ed51e5e53cfbab3103d6b7b85b7ba4515e4f30c3

Ciao, Marcus
