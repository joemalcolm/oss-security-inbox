X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/12
Message-ID: <trinity-c5d8bde7-5655-4bfb-be5e-324456bc5a99-1781382673768@trinity-msg-rest-gmx-gmx-live-6759fbb69b-f5flm>
Date: Sat, 13 Jun 2026 20:31:13 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55650: Use-After-Free in GPAC/MP4Box via gf_svg_node_del on crafted MP4 file processed with -svg
Content-Type: text/plain; charset=utf-8


Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (46be5f928660530d5332cd2f1d177208737558ef)
CVE:       CVE-2025-55650
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box dumps a crafted MP4 file through the MPEG-4 LASeR/SVG
  scene path (-svg), an SVG node allocated by gf_svg_create_node()
  is freed by gf_svg_node_del() and then accessed again during scene
  graph reset/cleanup.

  AddressSanitizer reports a heap-use-after-free at
  scenegraph/svg_types.c:107, a READ of size 8 inside a 24-byte region
  that was freed in gf_svg_node_del() (svg_types.c:126), reached via
  gf_node_unregister() / gf_sg_reset() while MP4Box tears down the
  scene graph after parsing the crafted file.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -svg 10_poc.mp4

Asan-log:
==2845096==ERROR: AddressSanitizer: heap-use-after-free on address 0x503000003b50 at pc 0x7f6fa85be002 bp 0x7ffc5f00fac0 sp 0x7ffc5f00fab8
READ of size 8 at 0x503000003b50 thread T0
    #0 0x7f6fa85be001 in gf_svg_node_del scenegraph/svg_types.c:107
    #1 0x7f6fa844f47c in gf_node_unregister scenegraph/base_scenegraph.c:759
    #2 0x7f6fa8452a05 in gf_sg_reset scenegraph/base_scenegraph.c:481

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/10/10_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3162
  https://www.cve.org/CVERecord?id=CVE-2025-55650
  https://infosec.exchange/@sigdevel/116733923605483597


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

