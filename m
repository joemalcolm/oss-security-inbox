X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/20/11
Message-ID: <CANJvGMF5XH6OJdDA3obNmQsMt2B01XE+0uLndoXw4o94t-AvBQ@mail.gmail.com>
Date: Fri, 20 Nov 2026 06:28:59 -0800
From: Randall Hand <randall.hand@...il.com>
To: oss-security@...ts.openwall.com
Subject: ytnef 2.1.3: heap overflow and OOB reads in libytnef DecompressRTF (GHSA-jhg4-xcxm-cfg6)
Content-Type: text/plain; charset=utf-8

Hello,

I maintain ytnef/libytnef (https://github.com/Yeraze/ytnef). You are
receiving this because you package or depend on it. ytnef 2.1.3,
released today, fixes several memory-safety bugs in libytnef's TNEF
(winmail.dat) parsing. A crafted attachment can trigger them, so any
email sender can reach them in software that parses TNEF with
libytnef, for example Evolution, Geary and the Claws Mail TNEF plugin.

  Release:   https://github.com/Yeraze/ytnef/releases/tag/v2.1.3
  Advisory:  https://github.com/Yeraze/ytnef/security/advisories/GHSA-jhg4-xcxm-cfg6
  Affected:  all versions up to and including 2.1.2
  Fixed in:  2.1.3
  Severity:  High

Summary:

  1. Heap buffer overflow (write) in DecompressRTF(), compressed
(LZFu) stream. The INT_MAX check on the stream-supplied
uncompressedSize (added in 2017 for CVE-2017-6302) is evaluated in
unsigned arithmetic and can be bypassed. The allocation then wraps,
and the 207-byte RTF prebuffer overruns it by 1 to 207 bytes. The
written bytes are fixed; the attacker chooses the overrun length.
CWE-190 / CWE-122.
  2. Heap out-of-bounds read in DecompressRTF(), uncompressed (MELA)
stream. uncompressedSize is not checked against the property size.
CWE-125.
  3. NULL pointer dereference on a partly parsed property in
TNEFFillMapi(), IsCompressedRTF() and DecompressRTF(). CWE-476.

The release also fixes the out-of-bounds reads reported in public
issue #112, including CVE-2026-111145 and CVE-2026-111146 (assigned by
VulnCheck), and several related NUL-termination and leak issues. The
`ytnefprocess` procmail hook reaches issues 1 and 2 on delivery
through calendar items (ytnef/vcal.c), with no user action.

A CVE ID for the overflow write has been requested through the GitHub
advisory and is still pending. I will add it to the advisory when it
is assigned.

The fix is self-contained in lib/ytnef.c and ytnef/main.c and
backports cleanly. The 2.1.3 commits are listed in the release. New
regression tests are in test-data/test_decompress_rtf.c, run by `make
check`. If you package an older branch and want help with a backport,
please reply.

Credit: Deepak Jain (AiNET), with an independent report by Jan Twrsnik.

Thank you,
Randall Hand
ytnef maintainer
