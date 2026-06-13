X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/10
Message-ID: <trinity-0ff7b644-c28c-483f-95aa-f39c5f0bf05f-1781382405414@trinity-msg-rest-gmx-gmx-live-6759fbb69b-wwfhb>
Date: Sat, 13 Jun 2026 20:26:45 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55648: Heap-based Buffer Overflow in GPAC/MP4Box via gf_opus_parse_packet_header on crafted MP4 with corrupted stsz data
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (61bbfd2e89553373ba3449b8ec05b5f098d732a5)
CVE:       CVE-2025-55648
CWE:       CWE-122 (Heap-based Buffer Overflow)
CVSS 3.1:  5.4 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box dumps a crafted MP4 file containing corrupted sample-size
  (stsz) data for an Opus track, gf_opus_parse_packet_header() in
  media_tools/av_parsers.c does not sufficiently validate the input
  buffer length before parsing the Opus packet header.

  AddressSanitizer reports a heap-buffer-overflow at
  media_tools/av_parsers.c:11297, a READ of size 1 located 1242 bytes
  after a 32-byte heap region allocated by Media_GetSample(), reached
  via gf_inspect_dump_opus_internal() while MP4Box dumps the crafted
  Opus track. The out-of-bounds read may also disclose adjacent heap
  memory.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ./configure --use-zlib=no --use-ssl=no && make -j $(nproc) ;
  -Command: ./MP4Box 12_poc.mp4 -dxml

Asan-log:
==42406==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x50300001124a at pc 0x7f5055796721 bp 0x7ffe52d66880 sp 0x7ffe52d66878
READ of size 1 at 0x50300001124a thread T0
    #0 0x7f5055796720 in gf_opus_parse_packet_header media_tools/av_parsers.c:11297
    #1 0x7f5055f1257f in gf_inspect_dump_opus_internal filters/inspect.c:1884
    #2 0x56348a506b66 in dump_isom_opus /media/user/6d3eeb8a-a93b-4220-bb13-a4e488ce0ce2/gpac/runtime/gpac_asan/applications/mp4box/filedump.c:1501

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/12/12_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3190
  https://www.cve.org/CVERecord?id=CVE-2025-55648
  https://infosec.exchange/@sigdevel/116736751244916557


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

