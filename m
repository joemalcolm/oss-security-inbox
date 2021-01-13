X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/01/13/4
Message-ID: <CAA8xKjWQazSpUaRSpyVenSAwJMvev8GvN+_AXm-5RizhYtLnzg@mail.gmail.com>
Date: Wed, 13 Jan 2021 15:42:17 +0100
From: Mauro Matteo Cascella <mcascell@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-11947 QEMU: heap buffer overflow in iSCSI block driver may lead to information disclosure
Content-Type: text/plain; charset=utf-8

Hello all,

A heap buffer overflow was found in the QEMU block driver for iSCSI
images. This flaw could lead to an out-of-bounds read access and
possible information disclosure from the QEMU process memory to a
malicious guest. The highest threat from this vulnerability is to data
confidentiality.

Upstream fix:
https://git.qemu.org/?p=qemu.git;a=commit;h=ff0507c239a246fd7215b31c5658fc6a3ee1e4c5

CVE-2020-11947 was assigned to this issue by MITRE Corporation.

Best regards.
-- 
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

