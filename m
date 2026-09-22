X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/20
Message-ID: <a7a19d53-0124-482f-a7bb-7dfb42c8ae48@redhat.com>
Date: Tue, 22 Sep 2026 12:52:12 -0400
From: Carlos O'Donell <carlos@...hat.com>
To: oss-security@...ts.openwall.com
Subject: The GNU C Library security advisories update for 2026-09-22
Content-Type: text/plain; charset=utf-8

The following security advisories have been published:

GLIBC-SA-2026-0022:
===================
AT_SECURE programs may load attacker-controlled code via $ORIGIN

A time-of-check to time-of-use (TOCTOU) race condition in the dynamic
loader (ld.so) of the GNU C Library (glibc) versions 2.14 through 2.44
allows a local attacker to escalate privileges. When expanding $ORIGIN
in DT_RPATH for setuid/setgid (AT_SECURE) programs, glibc validates the
lexically normalized search path against the trusted directories but
then opens the raw, un-normalized path. On systems where the Linux
fs.protected_hardlinks sysctl is disabled, a local attacker who
hard-links such a program into an attacker-controlled directory and wins
a race to replace an intermediate path component with a symbolic link
can direct the loader outside the trusted directory, causing it to load
an attacker-controlled shared object and execute arbitrary code with the
elevated privileges of the program.

Exploitation requires an installed setuid or setgid binary whose DT_RPATH
uses $ORIGIN followed by ".." traversal that normalizes into a trusted
directory, and the ability to hard-link that binary and win the race by
swapping a path component for a symbolic link. Major Linux-based OS
distributions ship with fs.protected_hardlinks enabled by default and
mitigate the vulnerability.

CVE-Id: CVE-2026-86805
Public-Date: 2026-07-06
Vulnerable-Commit: 47c3cd7a74e8c089d60d603afce6d9cf661178d6 (2.13-113)
Fix-Commit: ed0c137b97eb940b4b64981e84ed806d3276edd9 (2.45)
Reported-by: Jann Horn <jannh@...gle.com>
CVSS: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I:H/A:L - 6.3

GLIBC-SA-2026-0023:
===================
AT_SECURE program buffer overflow via $ORIGIN processing

A stack-based buffer overflow in the dynamic loader (ld.so) of the GNU C
Library (glibc) versions 2.14 through 2.44 allows a local attacker to
crash or corrupt the memory of setuid/setgid (AT_SECURE) programs.

When such a program's DT_RPATH or DT_RUNPATH begins with $ORIGIN and is
followed by NUL or '/' the loader both reads past the end of the path
buffer and writes past the end of a stack-allocated internal buffer.
The corrupted loader stack can lead to a loader crash (denial of
service) and limited disclosure of process memory.

CVE Id: CVE-2026-95818
Public-Date: 2026-08-14
Vulnerable-Commit: 47c3cd7a74e8c089d60d603afce6d9cf661178d6 (2.13-113)
Fix-Commit: ed0c137b97eb940b4b64981e84ed806d3276edd9 (2.45)
Reported-by: AISLE in partnership with Red Hat
CVSS: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:L/A:N - 3.6

