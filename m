X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/13
Message-ID: <trinity-963c636d-2509-4c32-8fe8-7df287275d2c-1781382771958@trinity-msg-rest-gmx-gmx-live-6759fbb69b-p7rsg>
Date: Sat, 13 Jun 2026 20:32:52 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55661: Heap-based Buffer Overflow in GPAC/MP4Box via gf_opus_parse_packet_header on crafted MP4 file with malformed Opus packet
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (ff8249a407685d00ceb5f4d2a798b9cad195140e)
CVE:       CVE-2025-55661
CWE:       CWE-122 (Heap-based Buffer Overflow)
CVSS 3.1:  5.4 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box dumps a crafted MP4 file containing a malformed Opus
  audio packet (e.g. an invalid TOC code 3 length), gf_opus_parse_packet_header()
  in media_tools/av_parsers.c does not sufficiently validate the input
  buffer size before reading Opus packet header fields.

  AddressSanitizer reports a heap-buffer-overflow at
  media_tools/av_parsers.c:11326, a READ of size 1 immediately after a
  3-byte heap region allocated by Media_GetSample(), reached via
  gf_inspect_dump_opus_internal() while MP4Box dumps the crafted Opus
  track. The out-of-bounds read may also disclose adjacent heap memory.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box 9_poc.mp4 -dxml -out /dev/null

Asan-log:
==26920==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x502000001a13 at pc 0x7efd1656ed0b bp 0x7ffcecc3c420 sp 0x7ffcecc3c418
READ of size 1 at 0x502000001a13 thread T0
    #0 0x7efd1656ed0a in gf_opus_parse_packet_header media_tools/av_parsers.c:11326
    #1 0x7efd16cce40f in gf_inspect_dump_opus_internal filters/inspect.c:1830
    #2 0x55836b659b66 in dump_isom_opus /home/user/target/mp4box_dyn/gpac_asan/gpac/applications/mp4box/filedump.c:1501

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/9/9_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3160
  https://www.cve.org/CVERecord?id=CVE-2025-55661
  https://infosec.exchange/@sigdevel/116733907390103029


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

