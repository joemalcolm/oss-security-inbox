X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/14
Message-ID: <trinity-c536381f-adab-4fa9-b3f4-09bc40d0337d-1781382848370@trinity-msg-rest-gmx-gmx-live-6759fbb69b-cnx86>
Date: Sat, 13 Jun 2026 20:34:08 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55663: NULL Pointer Dereference in GPAC/MP4Box via Track_SetStreamDescriptor on crafted MP4 with unknown svcC box in av01
Content-Type: text/plain; charset=utf-8


Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (15a4ac2dff38cdbb8b43e7c84fb1595ee80d81ac)
CVE:       CVE-2025-55663
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box imports a crafted MP4 file containing an unknown svcC
  box inside an av01 parent box, the unsupported-box handling path
  can leave the relevant sample entry pointer uninitialized or invalid.
  Track_SetStreamDescriptor() in isomedia/track.c later dereferences
  this pointer without validating it, while updating the stream
  description during bitrate update.

  AddressSanitizer reports a SEGV caused by a READ memory access at
  isomedia/track.c:1677 (address 0x001e3fff8005), reached via
  gf_isom_change_mpeg4_description() / gf_media_update_bitrate_ex()
  while MP4Box imports the crafted track.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -add 8_poc.mp4 -new /dev/null -ab 1024

Asan-log:
==2133828==ERROR: AddressSanitizer: SEGV on unknown address 0x001e3fff8005 (pc 0x55662b3210b5 bp 0x7fffca0b82e0 sp 0x7fffca0b81e0 T0)
==2133828==The signal is caused by a READ memory access.
    #0 0x55662b3210b5 in Track_SetStreamDescriptor isomedia/track.c:1677
    #1 0x55662b23e7d5 in gf_isom_change_mpeg4_description isomedia/isom_write.c:1759
    #2 0x55662b457f86 in gf_media_update_bitrate_ex media_tools/media_import.c:100

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/8/8_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3143
  https://www.cve.org/CVERecord?id=CVE-2025-55663
  https://infosec.exchange/@sigdevel/116733899601128471


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

