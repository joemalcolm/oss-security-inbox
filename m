X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/19/9
Message-ID: <32446be3-2e88-41d3-93b2-924c94bf1530@linaro.org>
Date: Thu, 19 Nov 2026 15:03:46 -0300
From: Adhemerval Zanella Netto <adhemerval.zanella@...aro.org>
To: libc-announce@...rceware.org, oss-security@...ts.openwall.com
Subject: The GNU C Library security advisories update for 2026-11-19
Content-Type: text/plain; charset=utf-8

The following security advisories have been published:

GLIBC-SA-2026-0032:
===================

Double free after allocation failure in glob

The glob functions in the GNU C Library versions 2.44 and earlier may
free the same heap block twice when a memory allocation fails while
glob prepends the directory name to the names it matched.  The names
already rewritten are freed, but their pointers stay in the result
vector, and the error path frees them again with globfree.

The allocation must fail after at least one name has been rewritten,
so the issue can only be reached when the process is already close to
its memory limit, for example under an address space limit (RLIMIT_AS)
or on a 32-bit system.  The attacker needs control to make the result
large enough to make the program or service run out of memory, either
by controlling the glob pattern and having knowledge of the filesystem
layout or through other means.  This issue affects all architectures
and ABIs supported by the GNU C Library.

CVE-Id: CVE-2026-126765
Public-Date: 2026-11-11
Vulnerable-Commit: 28f540f45bbacd939bfd07f213bcad2bf730b1bf (1.09)
Reported-By: Jack Doan <me@...kdoan.com>
CVSS: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:L - 3.7
