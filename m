X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/16
Message-ID: <trinity-e5e6d3b2-24f0-481e-9448-af74bfd6b964-1781383035845@trinity-msg-rest-gmx-gmx-live-6759fbb69b-bvklt>
Date: Sat, 13 Jun 2026 20:37:15 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55657: NULL Pointer Dereference in GPAC/MP4Box via gf_odf_vvc_cfg_write_bs on crafted MP4 file with unsupported vvc16 box
Content-Type: text/plain; charset=utf-8


Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (ff8249a407685d00ceb5f4d2a798b9cad195140e)
CVE:       CVE-2025-55657
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box imports a crafted MP4 file containing an unsupported
  vvc16 sample description box inside stsd, the VVC configuration
  write path can receive a NULL configuration pointer.
  gf_odf_vvc_cfg_write_bs() in odf/descriptors.c does not validate
  that this pointer to the VVC configuration NAL unit data is non-NULL
  before dereferencing it.

  AddressSanitizer reports a SEGV caused by a READ memory access at
  address 0x000000000000 (the zero page) at odf/descriptors.c:1267,
  reached via gf_odf_vvc_cfg_write() / isor_reader_check_config()
  while MP4Box checks the track configuration of the crafted file.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -add 6_poc.mp4 -new ./test -split-size 500

Asan-log:
==1913270==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7f04ff48fdda bp 0x511000011fc0 sp 0x7ffe2aad65b0 T0)
==1913270==The signal is caused by a READ memory access.
    #0 0x7f04ff48fdda in gf_odf_vvc_cfg_write_bs odf/descriptors.c:1267
    #1 0x7f04ff49094b in gf_odf_vvc_cfg_write odf/descriptors.c:1284
    #2 0x7f04ffd3a75d in isor_reader_check_config filters/isoffin_read_ch.c:1114

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/6/6_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3157
  https://www.cve.org/CVERecord?id=CVE-2025-55657
  https://infosec.exchange/@sigdevel/116710754169365223


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

