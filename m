X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/28/7
Message-ID: <CAAHN_R1kZOY4Mwz9ztjsGsKP6BZP0_-UtYe=F_zdzR=87_R4Ww@mail.gmail.com>
Date: Mon, 28 Sep 2026 11:44:00 -0400
From: Siddhesh Poyarekar <siddhesh.poyarekar@...il.com>
To: oss-security@...ts.openwall.com
Subject: The GNU C Library security advisory update for 2026-09-28
Content-Type: text/plain; charset=utf-8

The following security advisories have been published:

GLIBC-SA-2026-0024:
===================

One-byte overread in strncasecmp on Power8

The strncasecmp function in the GNU C Library 2.24 and later optimized
for the Power8 architecture may read one byte beyond the input size
limit, which may crash a program when that byte is not readable.

This condition may happen when the input strings to the strncasecmp
function are attacker controlled in an application and they match all
the way up to the edge of their page and the neighbouring page is either
not mapped or is not readable.

CVE Id: CVE-2026-97399
Public-Date: 2026-09-28
Vulnerable-Commit: c8376f3e07602aaef9cb843bb73cb5f2b860634a (2.23.90-474)
CVSS: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:L - 3.7
Reported-by: AISLE in partnership with Red Hat

Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD
