X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/8
Message-ID: <13a4f8a5-6dcb-4924-8fdf-f1f7e05ab214@linaro.org>
Date: Wed, 11 Nov 2026 10:09:45 -0300
From: Adhemerval Zanella Netto <adhemerval.zanella@...aro.org>
To: libc-announce@...rceware.org, oss-security@...ts.openwall.com
Subject: The GNU C Library security advisories update for 2026-11-11
Content-Type: text/plain; charset=utf-8

The following security advisories have been published:

GLIBC-SA-2026-0027:
===================
scanf %s and %[ one-byte buffer overflow in wide character conversion

Calling the wide scanf family of functions (swscanf, fwscanf, wscanf,
vswscanf, vfwscanf and vwscanf) with a %s or %[ conversion without the
'l' length modifier in the GNU C Library version 2.2 to version 2.44
writes an extra null byte one past the end of the destination buffer
when the converted multibyte string and its terminator exactly fill
that buffer.

Such a conversion stores each wide input character into the caller's
char array as a multibyte sequence produced by __wcrtomb.  To emit the
sequence that returns to the initial shift state, __vfwscanf_internal
finishes with __wcrtomb (buf, L'\0', &state), which also stores the
terminating null byte; that byte is copied to the destination.  The code
then appends a second null byte unconditionally, so a buffer sized for
the converted string and a single terminator, as the C standard requires
the caller to provide, is written one byte past its end.  The overflowing
byte is always a null byte.

The impact is limited.  The narrow scanf functions, the wide conversions
with the 'l' modifier into a wchar_t array, and the 'a'/'m' (allocation)
modifier are all unaffected; only the uncommon idiom of a wide scanf
storing into a narrow char array through %s or %[ is vulnerable, and the
overwrite only occurs when the converted input and its terminating null
byte exactly fill the destination array.

CVE-Id: CVE-2026-115819
Public-Date: 2026-11-11
Vulnerable-Commit: d64b6ad07585b8a37e5fecc9a47fcee766d52ede (2.2)
CVSS: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:L/A:L - 4.8
Reported-By: Russell Miller <rmiller@...kglow.com>


GLIBC-SA-2026-0028
===================
Double free after allocation failure in regcomp and regexec

The regcomp and regexec functions in the GNU C Library version 2.3 to
version 2.44 may read freed memory and free the same heap block twice
when a memory allocation fails while a regular expression is compiled or
matched.  The re_dfa_add_node (the NFA node table) and build_range_exp
(bracket ranges) grow several arrays with consecutive realloc calls and
store the new pointers only after all of them succeed.  When a later
call fails, the pattern buffer keeps pointers to blocks that were
already freed, and the error cleanup frees them again.  In regexec, the
back-reference cache (match_ctx_add_entry) frees its array when a
realloc fails but keeps the pointer, which is freed again on the error
path.

An attacker does not need to supply a crafted regular expression:
patterns large enough to grow these arrays are common.  The failure has
to hit a specific allocation, though, so the issue can only be reached
when the system is already under memory pressure.  An attacker who
supplies the pattern or the subject string has little control over
which allocation fails, so the expected impact is a crash of the
process.  This issue affects all architectures and ABIs supported by
the GNU C Library.

CVE-Id: CVE-2026-100290
Public-Date: 2026-09-08
Vulnerable-Commit: 3b0bdc723579a7c6df2cace0115a6ca0977d73f9 (2.2.4-631)
Reported-By: Tristan <TristanInSec@...il.com>
CVSS: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:L - 3.7
