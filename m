X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/11/2
Message-ID: <CAAHN_R31+jha61vPK-_p4QGij9VcCBFm22v=cB-8QpnWDxbvJA@mail.gmail.com>
Date: Thu, 10 Sep 2026 21:26:20 -0400
From: Siddhesh Poyarekar <siddhesh.poyarekar@...il.com>
To: oss-security@...ts.openwall.com
Subject: The GNU C Library security advisory update for 2026-09-10
Content-Type: text/plain; charset=utf-8

The following security advisory has been published:

GLIBC-SA-2026-0016:
===================

Stack overflow in nscd due to unbounded alloca use

The nscd service in the GNU C Library 2.3.4 and newer may crash due to a
stack overflow when a malicious DNS server returns too large a response
for a DNS query, resulting in degraded DNS resolution for the system.

Exploitation of this bug needs a system that has nscd enabled and using
an untrusted DNS server for name resolution, with the compromised DNS
server being capable of processing records large enough to result in a
stack overflow in an nscd thread stack.  During experimentation, bind 9
was unable to handle large records, but that could change in future or
with a different name server.  In typical installations, nscd is
executed in an isolated context as its own user without a shell, due to
which any compromise of that service is isolated.

There is a remote possibility of nscd cache corruption if an attacker
manages to get the stack pointer into a desired point in the heap,
potentially resulting in other caches in nscd being overwritten with
corrupt data through the stack overflow, until the buggy code path
eventually results in a crash.

Finally, a crash in nscd may result in performance degradation when
resolving names, but it does not result in a denial of service.

CVE-Id: CVE-2026-89092
CVSS: CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:N/I:L/A:L - 4.2
Public-Date: 2026-09-10
Vulnerable-Commit: d19687d6ebc545b633e14c07429f7892a599d0b9
Reported-by: Anmol Singh Rajput

Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD
