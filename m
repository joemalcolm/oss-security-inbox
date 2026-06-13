X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/7
Message-ID: <trinity-c159d684-29f6-43a1-965d-79c880b0855e-1781381962699@trinity-msg-rest-gmx-gmx-live-6759fbb69b-mxzlh>
Date: Sat, 13 Jun 2026 20:19:22 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55647: Integer Overflow in GPAC/MP4Box via mp4_mux_cenc_insert_pssh on crafted MP4 with oversized PSSH metadata
Content-Type: text/plain; charset=utf-8


Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (e95f3064d846e4606276fff111e0f97df1576a04)
CVE:       CVE-2025-55647
CWE:       CWE-190 (Integer Overflow or Wraparound)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box processes a crafted MP4 file containing malformed
  Protection System Specific Header (PSSH) metadata, mp4_mux_cenc_insert_pssh()
  in filters/mux_isom.c does not sufficiently validate PSSH-related size
  fields such as kid_count/dataSize before using them in a buffer size
  calculation.

  An attacker-controlled value overflows the size computation, causing
  realloc() to be called with an enormous size. AddressSanitizer reports
  an out-of-memory condition at filters/mux_isom.c:4326, where realloc()
  attempts to allocate 0xe40000100 bytes, reached via mp4_mux_start_fragment()
  while MP4Box runs DASH segmentation on the crafted file.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -dash 10000 ./15_poc.mp4

Asan-log:
==3757041==ERROR: AddressSanitizer: out of memory: allocator is trying to allocate 0xe40000100 bytes
    #0 0x7f635aaf3b78 in realloc ../../../../src/libsanitizer/asan/asan_malloc_linux.cpp:85
    #1 0x55f879e99c00 in mp4_mux_cenc_insert_pssh filters/mux_isom.c:4326
    #2 0x55f879ed3601 in mp4_mux_start_fragment filters/mux_isom.c:6396

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/15/15_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3235
  https://www.cve.org/CVERecord?id=CVE-2025-55647
  https://infosec.exchange/@sigdevel/116736795058798433


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

