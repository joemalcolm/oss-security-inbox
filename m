X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/09/12/5
Message-ID: <12565f8bad84ea9a77dadaaae0509b4cfa122fc3.camel@electronsweatshop.com>
Date: Thu, 12 Sep 2019 13:43:47 -0400
From: Randy Barlow <randy@...ctronsweatshop.com>
To: oss-security@...ts.openwall.com
Subject: 3 CVEs in dino
Content-Type: text/plain; charset=utf-8

Three CVEs have been identified and fixed in Dino.

CVE-2019-16235
==============

Dino did not properly check the source of message carbons.

https://nvd.nist.gov/vuln/detail/CVE-2019-16235

Fixed in https://github.com/dino/dino/commit/e84f2c49567e86d2a261ea264d65c4adc549c930


CVE-2019-16236
==========

Dino did not check roster push authorization.

https://nvd.nist.gov/vuln/detail/CVE-2019-16236

Fixed in https://github.com/dino/dino/commit/dd33f5f949248d87d34f399e8846d5ee5b8823d9


CVE-2019-16237
==========

Dinot did not properly check the source of MAM messages.

https://nvd.nist.gov/vuln/detail/CVE-2019-16237

Fixed in https://github.com/dino/dino/commit/307f16cc86dd2b95aa02ab8a85110e4a2d5e7363

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
