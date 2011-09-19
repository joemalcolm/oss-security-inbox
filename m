X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/09/19/4
Message-ID: <20110919145305.GC20121@suse.de>
Date: Mon, 19 Sep 2011 16:53:05 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Request? etherape remote crash (denial of service)
Content-Type: text/plain; charset=utf-8

Hi,

The authors of Etherape, a network traffic overview tool, fixed a remote
denial of service (NULL ptr dereference) fixed in etherape 0.9.12.

http://etherape.sourceforge.net/
http://sourceforge.net/tracker/?func=detail&aid=3309061&group_id=2712&atid=102712

This tool is in the same area as wireshark, so this probably needs a CVE.

Ciao, Marcus
