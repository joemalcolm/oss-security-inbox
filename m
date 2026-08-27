X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/27/6
Message-ID: <CAAHN_R08W0akhbqkrCg2-5UZJ7Chm9s7yvkDq+3B0qSLGgA5Yw@mail.gmail.com>
Date: Thu, 27 Aug 2026 15:25:35 -0400
From: Siddhesh Poyarekar <siddhesh.poyarekar@...il.com>
To: oss-security@...ts.openwall.com
Subject: The GNU C Library security advisory update for 2026-08-27
Content-Type: text/plain; charset=utf-8

Hello,

The following security advisory has been published:

GLIBC-SA-2026-0015:
===================

Passing an effectively empty string to the `,ccs=` syntax extension of
the mode argument in the `fopen` function in the GNU C Library version
2.45 or earlier may result in a heap buffer overflow when the mode
string input to the function is attacker controlled.

This usage pattern is not seen in applications in common GNU or Linux
distributions and applications that process user-supplied values for
`ccs` should not pass them through without validation.

CVE-Id: CVE-2026-18374
Public-Date: 2026-08-27
Vulnerable-Commit: 129d706d77587e4d6627cc1ebef9be0f7cbc65f0
Reported-by: AISLE in partnership with Red Hat
CVSS: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L/A:L - 4.9

Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD
