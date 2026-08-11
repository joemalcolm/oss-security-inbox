X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/11/3
Message-ID: <30fd2c98-dfb1-4994-ae35-bf678d7e9c20@linaro.org>
Date: Tue, 11 Aug 2026 09:59:45 -0300
From: Adhemerval Zanella Netto <adhemerval.zanella@...aro.org>
To: libc-announce@...rceware.org, oss-security@...ts.openwall.com
Subject: The GNU C Library security advisories update for 2026-04-28
Content-Type: text/plain; charset=utf-8

The following security advisories have been published:

GLIBC-SA-2026-0013:
===================
Potential stack-based buffer clash during tilde expansion in wordexp

Calling wordexp with a tilde (~) followed by an overly long username
in the GNU C Library version 2.2.3 to 2.43 may lead to a stack buffer
clash.

When expanding paths that begin with a tilde (~) followed by a username, the
internal parse_tilde function extracts the username to determine the user's
home directory.  The implementation allocates memory for this username directly
on the stack using the strndupa macro.  Because the size of this allocation
was determined by the length of the user-supplied input without any bounds
checks, passing an excessively long username e.g. thousands of characters,
forces the thread to exhaust its stack space. Thus if an application passes
untrusted, attacker-controlled input to the wordexp function, an attacker
can trigger a stack clash.

CVE-Id: CVE-2026-6791
Public-Date: 2026-06-22
Vulnerable-Commit: 344af000e1d6e9c7882b9bc48e71cb3f1b5fc03c (2.2.3-114)
Reported-by: storm


GLIBC-SA-2026-0014:
===================
wordexp with WRDE_APPEND may result in an invalid call to free()

Calling wordexp with WRDE_APPEND in conjunction with an invalid expansion
(where an error like WRDE_BADCHAR would be returned) can create a stale
address in the wordexp_t that can cause an invalid free from wordfree.
This affects the GNU C Library version 2.0 to version 2.43.

In WRDE_APPEND mode, wordexp saves the caller-visible wordexp_t state
before appending the processing input.  If the word expansion grows
we_wordv via realloc, and realloc requires moving we_wordv to a new memory
location (instead of expanding in-place), and the expansion later fails,
the rollback fails to properly restore all previous we_wordv values and
may add stale pointers into the caller-visible state.  A subsequent
wordfree may then issue an invalid call to free().

CVE-Id: CVE-2026-6368
Public-Date: 2026-07-14
Vulnerable-Commit: 8f2ece695d8822e9ecc63ecd157e90bf17a6fe65 (1.93-260)
Reported-by: shinobu


Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD
