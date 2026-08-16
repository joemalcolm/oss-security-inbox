X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/16/1
Message-ID: <CAPZUTYR35bkXFeawNva3DN+JLNReCw9GDrBNga7CEFBx60xwgg@mail.gmail.com>
Date: Sun, 16 Aug 2026 17:58:26 +0530
From: Sumit Chakraborty <sumit.ch2004@...il.com>
To: oss-security@...ts.openwall.com
Subject: libmspack: heap buffer overflow in make_decode_table() (Huffman decode table construction) -- CVE requested
Content-Type: text/plain; charset=utf-8

Hi all,

Reporting a memory-safety issue found via independent source audit of
libmspack (https://github.com/kyz/libmspack), a small C library for
Microsoft compression formats (CAB, CHM, LIT, HLP, KWAJ, SZDD) used by
cabextract and vendored by ClamAV (libclammspack), among others.

Summary: make_decode_table() in mspack/readhuff.h -- the shared Huffman
decode-table builder used across the library's CAB/CHM/LZX decoders -- does
not validate that its input code-length array satisfies Kraft's inequality
before building extension nodes for long codes. A crafted, format-legal
length distribution can cause it to write past the end of the
caller-allocated decode table while still returning success, giving the
caller no indication anything went wrong.

I've confirmed this is reachable through real library API calls with a
hand-crafted input file, not just direct/synthetic function calls, and
precisely measured the resulting out-of-bounds write. I'm holding back
further technical detail (exact trigger conditions, PoC construction,
affected call sites) pending coordinated disclosure.

Reported to the maintainer (Stuart Caie) directly by email on 2026-08-16.
No CVE currently assigned. Requesting a CVE ID be reserved for tracking;
full technical writeup and PoC will follow once a fix is available or a
reasonable disclosure window has passed.

Happy to share full details privately with anyone who needs them for triage
(distro security teams, downstream maintainers, etc.) -- just reach out
directly.

Thanks,
Sumit Chakraborty

