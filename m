X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/11
Message-ID: <trinity-159efd91-3b74-4f53-a6d3-6ce00a2b9535-1781382570902@trinity-msg-rest-gmx-gmx-live-6759fbb69b-vn2d5>
Date: Sat, 13 Jun 2026 20:29:31 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55649: NULL Pointer Dereference in GPAC/MP4Box via gf_media_map_esd on crafted MP4 with corrupted ESD data
Content-Type: text/plain; charset=utf-8


Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (09e7063ed0a13b4cee9a180a56dcc21e9f9ade07)
CVE:       CVE-2025-55649
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box fragments a crafted MP4 file containing corrupted
  Elementary Stream Descriptor (ESD) data, gf_media_map_esd() in
  media_tools/isom_tools.c calls strlen() on esd->URLString without
  first checking that the pointer is non-NULL.

  AddressSanitizer reports a SEGV caused by a READ memory access at
  address 0x000000000000 (the zero page) inside strlen(), called from
  gf_media_map_esd() at media_tools/isom_tools.c:1359, reached via
  isor_declare_track() while MP4Box declares the track from the
  crafted file during fragmentation setup.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ./configure --use-zlib=no --use-ssl=no && make -j $(nproc) ;
  -Command: ./MP4Box -frag 1500 11_poc.mp4

Asan-log:
==3589386==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7fe10e43f719 bp 0x7ffd4aa69250 sp 0x7ffd4aa689f8 T0)
==3589386==The signal is caused by a READ memory access.
    #0 0x7fe10e43f719 in libc.so.6+0x170719
    #1 0x7fe10dc78f09 in strlen ../../../../src/libsanitizer/sanitizer_common/sanitizer_common_interceptors.inc:389
    #2 0x7fe10c70a2b5 in gf_media_map_esd media_tools/isom_tools.c:1359

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/11/11_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3183
  https://www.cve.org/CVERecord?id=CVE-2025-55649
  https://infosec.exchange/@sigdevel/116736730620435563


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

