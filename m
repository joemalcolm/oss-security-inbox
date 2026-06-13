X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/9
Message-ID: <trinity-76a92e93-a2c1-46e1-bef1-78bbd6db408e-1781382275260@trinity-msg-rest-gmx-gmx-live-6759fbb69b-vm9dt>
Date: Sat, 13 Jun 2026 20:24:35 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55641: NULL Pointer Dereference in GPAC/MP4Box via gf_isom_copy_sample_info on crafted MP4 file with corrupted SAI metadata
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (f87b30611380e4dcd03cd4dd9ac553c0ec336826)
CVE:       CVE-2025-55641
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box imports a crafted MP4 file containing corrupted Sample
  Auxiliary Information (SAI) metadata, such as an invalid sai_samples
  count, gf_isom_copy_sample_info() in isomedia/isom_write.c does not
  sufficiently validate pointers after the SAI merge handling fails.

  AddressSanitizer reports a SEGV caused by a READ memory access at
  address 0x000000000000, at isomedia/isom_write.c:8164, reached via
  gf_import_isomedia_track() while MP4Box imports the crafted track
  during a split-size operation.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -add 13_poc.mp4 -new /dev/null -split-size 500

Asan-log:
==2426338==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7f87d7424e25 bp 0x0a240000006f sp 0x7fff7cd96ae0 T0)
==2426338==The signal is caused by a READ memory access.
    #0 0x7f87d7424e25 in gf_isom_copy_sample_info isomedia/isom_write.c:8164
    #1 0x7f87d75c3a94 in gf_import_isomedia_track media_tools/media_import.c:708
    #2 0x7f87d75c9baf in gf_import_isomedia media_tools/media_import.c:806

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/13/13_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3195
  https://www.cve.org/CVERecord?id=CVE-2025-55641
  https://infosec.exchange/@sigdevel/116736775314270129


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

