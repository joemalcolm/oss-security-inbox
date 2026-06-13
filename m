X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/3
Message-ID: <trinity-c4c11652-7398-4247-beb2-7964f660170d-1781377389016@trinity-msg-rest-gmx-gmx-live-6759fbb69b-vwxjq>
Date: Sat, 13 Jun 2026 19:03:09 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55644: Use-After-Free in GPAC/MP4Box via gf_node_get_tag on crafted MP4 file with invalid BIFS GlobalQuantizer command
Content-Type: text/plain; charset=utf-8


Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (f5b7cdc63a7f3269040778c5431a8f6c310bc9f3)
CVE:       CVE-2025-55644
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box dumps a crafted MP4 file containing an invalid BIFS
  GlobalQuantizer command, BM_ParseGlobalQuantizer() in
  bifs/memory_decoder.c calls gf_node_unregister() to release a
  192-byte QuantizationParameter node, freeing the underlying heap
  region, but does not clear the stale pointer.

  The function then calls gf_node_get_tag() on the same freed pointer.
  AddressSanitizer reports a heap-use-after-free READ of size 8 at
  scenegraph/base_scenegraph.c:1263, 0 bytes inside the previously freed
  192-byte region, reached via BM_ParseGlobalQuantizer() while MP4Box
  decodes the BIFS command list during the -svg scene dump.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -svg ./20_poc.mp4

Asan-log:
==3340347==ERROR: AddressSanitizer: heap-use-after-free on address 0x510000000740 at pc 0x55ce9bd4be93 bp 0x7fff57ea49f0 sp 0x7fff57ea49e8
READ of size 8 at 0x510000000740 thread T0
    #0 0x55ce9bd4be92 in gf_node_get_tag scenegraph/base_scenegraph.c:1263
    #1 0x55ce9bff0dde in BM_ParseGlobalQuantizer bifs/memory_decoder.c:181
    #2 0x55ce9bff0dde in BM_ParseExtendedUpdates bifs/memory_decoder.c:386

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/20/20_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3246
  https://nvd.nist.gov/vuln/detail/CVE-2025-55644
  https://infosec.exchange/@sigdevel/116736836762980573

——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

