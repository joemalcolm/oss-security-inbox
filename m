X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/04/6
Message-ID: <20141104070610.GA17145@suse.de>
Date: Tue, 4 Nov 2014 08:06:10 +0100
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Request: polarssl
Content-Type: text/plain; charset=utf-8

Hi,

https://polarssl.org/tech-updates/releases/polarssl-1.2.12-released

and

https://polarssl.org/tech-updates/releases/polarssl-1.3.9-released

have some security issues worth CVEs.

"On the security front this release fixes a mistake in the negotiation
introduced in PolarSSL 1.3.8. The mistake resulted in servers
negotiating a weaker signature algorithm than available. In addition
two remotely-triggerable memory leaks were found by the Codenomicon
Defensics tool and fixed in this release."

Ciao, Marcus
