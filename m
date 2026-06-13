X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/17
Message-ID: <trinity-d3595afa-cacb-4108-8244-bbe85a8b2537-1781383150017@trinity-msg-rest-gmx-gmx-live-6759fbb69b-5d7pf>
Date: Sat, 13 Jun 2026 20:39:10 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55659: NULL Pointer Dereference in GPAC/MP4Box via ctts_box_write on crafted MP4 file with negative timestamps
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (ff8249a407685d00ceb5f4d2a798b9cad195140e)
CVE:       CVE-2025-55659
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box splits/remuxes a crafted, truncated MP4 file, invalid
  negative-timestamp handling during range estimation can leave the
  composition-time-to-sample entries pointer in an invalid or NULL
  state. ctts_box_write() in isomedia/box_code_base.c does not check
  this pointer before dereferencing it while writing the ctts box
  during final muxing.

  AddressSanitizer reports a SEGV caused by a READ memory access at
  address 0x000000000000 (the zero page) at isomedia/box_code_base.c:464,
  reached via the box-writing chain (gf_isom_box_write_listing /
  gf_isom_box_write) while MP4Box closes the output file.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -add 5_poc.mp4 -new ./test -split-size 500

Asan-log:
==1926241==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7faf284d6c18 bp 0x511000015bc0 sp 0x7fff5c0b2210 T0)
==1926241==The signal is caused by a READ memory access.
    #0 0x7faf284d6c18 in ctts_box_write isomedia/box_code_base.c:464
    #1 0x7faf28565469 in gf_isom_box_write_listing isomedia/box_funcs.c:2154
    #2 0x7faf28565469 in gf_isom_box_write isomedia/box_funcs.c:2204

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/5/5_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3156
  https://www.cve.org/CVERecord?id=CVE-2025-55659
  https://infosec.exchange/@sigdevel/116710743410087676


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

