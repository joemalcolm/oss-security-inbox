X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/03/17/1
Message-ID: <CAKx+4-oZ3YabEpWXYSs8LccRc8PcC_o2fbg7V5FpLT+nVBn66w@mail.gmail.com>
Date: Wed, 17 Mar 2021 11:21:23 +0530
From: Rohit Keshri <rkeshri@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-3428 Linux kernel: integer overflow in ext4_es_cache_extent
Content-Type: text/plain; charset=utf-8

Hello Team,

A flaw was found in the Linux kernel. A denial of service problem is
identified if an extent tree is corrupted in a crafted ext4 filesystem in
fs/ext4/extents.c in ext4_es_cache_extent. Fabricating an integer overflow,
A local attacker with a special user privilege may cause a system crash
problem which can lead to an availability threat.

'CVE-2021-3428' was assigned by Red Hat.

References:
https://bugzilla.suse.com/show_bug.cgi?id=1173485

Regards,
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@...hat.com for urgent response

