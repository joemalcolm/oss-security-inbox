X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/04/7
Message-ID: <20101104150429.GO25118@suse.de>
Date: Thu, 4 Nov 2010 16:04:29 +0100
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE Clarification: OpenFabrics ofed stack also contains RDS protocol
Content-Type: text/plain; charset=utf-8

Hi,

The openfabrics remote messaging / dma stack also contains
the RDS protocol family module (actually it seems to be the originator
before it came into mainline).

It is in the ofa_kernel package, and SUSE ships it e.g. in the "ofed"
packages.


The net/rds/ code inside of it is pretty much the same as the Linux
kernel module. It also is autoloading with module aliases.

CVE-2010-3904 seems to be there up to the latest version after looking
at the code (I tried the 1.4 version).

CVE-2010-3865 seems to be present in some versions, but not in the
latest version. Unverified.


Does this need new CVEs? The projects are different, but the history
seems clear and the code basically the same.

Ciao, Marcus
