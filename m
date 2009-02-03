X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/02/03/1
Message-ID: <20090203155152.GB6147@suse.de>
Date: Tue, 3 Feb 2009 16:51:52 +0100
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Request: sblim-sfcb genSslCert.sh temp race
Content-Type: text/plain; charset=utf-8

Hi folks, Steve,

We have identified and fixed a tmp race in the genSslCert.sh helper
script in sblim-sfcb.

The script is run just once as root making this a very small attack
window.

https://sourceforge.net/tracker/index.php?func=detail&aid=2561165&group_id=128809&atid=712784

Can you please assign a CVE id?

Ciao, Marcus
