X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/19
Message-ID: <trinity-28cc4027-1a84-4664-99e1-cd82c4929071-1781383583413@trinity-msg-rest-gmx-gmx-live-6759fbb69b-wb66s>
Date: Sat, 13 Jun 2026 20:46:23 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-52293: Out-of-bounds Read in GPAC/MP4Box via gf_hevc_read_sps_bs_internal on crafted HEVC SPS in MP4 file
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (8a0d5b43c242fe4befb88530e4c9afef37114161)
CVE:       CVE-2025-52293
CWE:       CWE-125 (Out-of-bounds Read)
CVSS 3.1:  5.4 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box imports and splits a crafted MP4 file containing a
  malformed HEVC track, gf_hevc_read_sps_bs_internal() in
  media_tools/av_parsers.c reads SPS fields from the HEVC NAL
  bitstream without sufficiently validating the bitstream bounds
  for the crafted SPS data.

  AddressSanitizer reports a SEGV caused by a READ memory access at
  media_tools/av_parsers.c:9309, reached via gf_hevc_read_sps_ex()
  during NAL/config replacement while MP4Box processes the crafted
  file (address 0x00000007c018).

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -add 3_poc.mp4 -new /dev/null -split-size 5000000

Asan-log:
==134142==ERROR: AddressSanitizer: SEGV on unknown address 0x00000007c018 (pc 0x7f2e8935d6b5 bp 0x000000000007 sp 0x7ffcefe27c10 T0)
==134142==The signal is caused by a READ memory access.
    #0 0x7f2e8935d6b5 in gf_hevc_read_sps_bs_internal media_tools/av_parsers.c:9309
    #1 0x7f2e8935ff38 in gf_hevc_read_sps_ex media_tools/av_parsers.c:9597
    #2 0x7f2e89b3061c in isor_ps_get_id filters/isoffin_read_ch.c:712

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/3/3_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3146
  https://www.cve.org/CVERecord?id=CVE-2025-52293
  https://infosec.exchange/@sigdevel/116710484148913883


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

