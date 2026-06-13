X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/15
Message-ID: <trinity-016bc3af-6ee4-4411-b255-ce9b3121a903-1781382939953@trinity-msg-rest-gmx-gmx-live-6759fbb69b-qnrq2>
Date: Sat, 13 Jun 2026 20:35:40 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55660: Stack-based Buffer Overflow in GPAC/MP4Box via gf_opus_read_length on crafted MP4 file with malformed Opus packet
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (ff8249a407685d00ceb5f4d2a798b9cad195140e)
CVE:       CVE-2025-55660
CWE:       CWE-121 (Stack-based Buffer Overflow)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box dumps a crafted MP4 file containing a malformed,
  non-self-delimited Opus packet (e.g. an invalid odd packet length),
  gf_opus_read_length() in media_tools/av_parsers.c does not
  sufficiently validate the Opus packet size before writing the
  computed length back into the packet header structure.

  AddressSanitizer reports a stack-buffer-overflow at
  media_tools/av_parsers.c:11140, a WRITE of size 2 overflowing the
  pckh stack object (offset 568) allocated in
  gf_inspect_dump_opus_internal(), reached via
  gf_opus_parse_packet_header() while MP4Box dumps the crafted Opus
  track.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -add 7_poc.mp4 -dxml -out /dev/null

Asan-log:
==24222==ERROR: AddressSanitizer: stack-buffer-overflow on address 0x7efe3c106638 at pc 0x7efe3ef07226 bp 0x7fff9e395ff0 sp 0x7fff9e395fe8
WRITE of size 2 at 0x7efe3c106638 thread T0
    #0 0x7efe3ef07225 in gf_opus_read_length media_tools/av_parsers.c:11140
    #1 0x7efe3ef6e128 in gf_opus_parse_packet_header media_tools/av_parsers.c:11411
    #2 0x7efe3f6ce40f in gf_inspect_dump_opus_internal filters/inspect.c:1830

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/7/7_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3161
  https://www.cve.org/CVERecord?id=CVE-2025-55660
  https://infosec.exchange/@sigdevel/116733892068649310


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

