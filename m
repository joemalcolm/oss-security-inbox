X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/31
Message-ID: <680a8647-8cff-4077-a090-3d3771c8cdd7@linaro.org>
Date: Mon, 14 Sep 2026 15:53:14 -0300
From: Adhemerval Zanella Netto <adhemerval.zanella@...aro.org>
To: libc-announce@...rceware.org, oss-security@...ts.openwall.com
Subject: The GNU C Library security advisories update for 2026-09-14
Content-Type: text/plain; charset=utf-8

The following security advisories have been published:

GLIBC-SA-2026-0017:
===================
Buffer overflow in strfmon and strfmon_l right-justification padding

Calling strfmon and strfmon_l in the GNU C Library version 2.38 to
2.44 can write past the end of the caller-supplied output buffer
when a conversion uses right-justified width padding.

Exploitation requires an application code path that calls strfmon or
strfmon_l with right-justified width padding into a destination buffer
that is large enough for the padding to succeed but too small for the
internal memmove call. The field width or format may be
attacker-influenced or a fixed susceptible pattern in the caller.

At the time of publication, no network-facing application impact is
known.

CVE-Id: CVE-2026-19499
CVSS: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:L/A:H - 7.7
Public-Date: 2026-08-11
Vulnerable-Commit: e88b9f0e5cc50cab57a299dc7efe1a4eb385161d (2.38)
Fix-Commit: b090cf226ff65b913e41536f1f573f500855615c (2.45)
Reported-by: AISLE in partnership with Red Hat


GLIBC-SA-2026-0018:
===================
Stack-based out-of-bounds write in tdelete during tree rebalancing

Calling tdelete on a sufficiently deep tree in the GNU C Library
version 2.1 to 2.44 may write one pointer past the end of an
alloca-allocated array on the stack, which may crash the application.

The tdelete implementation keeps an explicit stack of parent nodes for
rebalancing, which is grown as needed while descending the tree.  Two
rebalancing branches push an additional entry without checking the
capacity, and write past the array when the stack is exactly full.
Triggering this requires a node at a depth of exactly 40 (or 40 plus a
multiple of 20), which implies a tree with at least a million nodes, so
an attacker must drive a large number of insertions and deletions
through an application that uses tsearch and tdelete.  The written
value is a pointer into a tree node and is not directly attacker
controlled.  No affected application in common distributions has
been identified.

CVE-Id: CVE-2026-19542
Public-Date: 2026-08-11
Vulnerable-Commit: 993b3242cdc37152fbbc7fbd5ce22b2734b04b23 (1.93-194)
Fix-Commit: e2789c46e3bfdcd67a82bea9946b315c179e83d3 (2.45)
Fix-Commit: d6ff274313d79feb864cc10eb775b91c817a67e9 (2.44-26)
Fix-Commit: 0afa34adb0fd9d756d1fe745064272e9b9aadbdc (2.43-51)
Fix-Commit: 2ea357280d82dab462851419a2338d940516a37e (2.42-85)
Fix-Commit: 9318c2571576017d280a31b7b9ab576c9b696b1a (2.41-154)
Reported-by: AISLE in partnership with Red Hat
CVSS: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:L/A:L - 5.6


GLIBC-SA-2026-0019:
===================
SHIFT_JISX0213 decoding may hang on crafted input

Converting crafted SHIFT_JISX0213 input to UCS-4 or the internal wide
character encoding, for example with iconv, in the GNU C Library version
2.3 to 2.44 may result in the converter making no progress, causing the
calling application to hang.

Some SHIFT_JISX0213 sequences decode to two code points.  If the output
buffer has room for only the first one, the converter stores the second
in the conversion state and returns E2BIG, but it never clears that
pending character after emitting it on the next call.  The converter
then keeps emitting the pending character without consuming further
input, so an application that retries the conversion loops forever.
The input must be attacker controlled and the application must convert
it with an output buffer small enough to split the two code points.
Only the SHIFT_JISX0213 character set is affected, which is not
commonly used.  The related defect in the EUC_JISX0213 converter is
tracked separately as CVE-2026-80489.

CVE-Id: CVE-2026-77117
Public-Date: 2026-08-21
Vulnerable-Commit: 93a568aaba1d3da3497102dfe1eeb81070a24c1c (2.2.4-823)
Fix-Commit: 68d94bbe50b7577d48998107d632ef3a0df050e3 (2.45)
Fix-Commit: 6f9b2bfa500bf5d1cff5d990adfff4b71298dadd (2.44-30)
Fix-Commit: 138c43f0180945b014e284a87b332d4d8237f537 (2.43-55)
Fix-Commit: 67db60ee152d221782d2ae915268871d3e06a007 (2.42-88)
Fix-Commit: e43e46f94398b3de446fec11da1e7633ea5202ec (2.41-157)
CVSS: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H - 5.9
Reported-by: AISLE in partnership with Red Hat


GLIBC-SA-2026-0020:
===================
EUC_JISX0213 decoding may hang on crafted input

Converting crafted EUC_JISX0213 input to UCS-4 or the internal wide
character encoding, for example with iconv, in the GNU C Library version
2.3 to 2.44 may result in the converter making no progress, causing the
calling application to hang.

Some EUC_JISX0213 sequences decode to two code points.  If the output
buffer has room for only the first one, the converter stores the second
in the conversion state and returns E2BIG, but it never clears that
pending character after emitting it on the next call.  The converter
then keeps emitting the pending character without consuming further
input, so an application that retries the conversion loops forever.
The input must be attacker controlled and the application must convert
it with an output buffer small enough to split the two code points.
Only the EUC_JISX0213 character set is affected, which is not
commonly used.  The related defect in SHIFT_JISX0213 converter is
tracked separately as CVE-2026-77117.

CVE-Id: CVE-2026-80489
Public-Date: 2026-08-26
Vulnerable-Commit: 93a568aaba1d3da3497102dfe1eeb81070a24c1c (2.2.4-823)
Fix-Commit: 4dafa087ff5fe7df45bd37dc727e988da6b8c935 (2.45)
Fix-Commit: cb61572ea3f773e1e1978f6c412cc36a30acdb0c (2.44-31)
Fix-Commit: 3ad1bbd8f94a207efb108a38d434695eab8a1831 (2.43-56)
Fix-Commit: 87c2795cf6a7584e351036ab43e74b03ccc54a83 (2.42-89)
Fix-Commit: ec116a0fbedcc860631e525e70b409cf295f27da (2.41-158)
CVSS: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H - 5.9
Reported-by: AISLE in partnership with Red Hat
