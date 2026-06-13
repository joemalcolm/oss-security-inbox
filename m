X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/20
Message-ID: <trinity-21bc2eb4-e5fc-4eb4-800e-b2ee30f91a2c-1781383671758@trinity-msg-rest-gmx-gmx-live-6759fbb69b-8cs9v>
Date: Sat, 13 Jun 2026 20:47:51 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55662: Divide by Zero in GPAC/MP4Box via gf_opus_parse_packet_header on crafted MP4 file with malformed Opus header
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (ff8249a407685d00ceb5f4d2a798b9cad195140e)
CVE:       CVE-2025-55662
CWE:       CWE-369 (Divide by Zero)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box dumps a crafted MP4 file containing an Opus audio track
  with malformed packet/header parameters, gf_opus_parse_packet_header()
  in media_tools/av_parsers.c fails to verify that critical Opus packet
  fields such as nb_frames are valid before using them in arithmetic.

  The function computes a value such as max = header->nb_frames - 1
  and uses it without checking that nb_frames is non-zero, leading to a
  division by zero / invalid arithmetic that AddressSanitizer reports as
  an FPE at media_tools/av_parsers.c:11479, reached via the Opus dump
  path while MP4Box processes the crafted MP4.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -add 2_poc.mp4 -dxml -out /dev/null

Asan-log:
==21635==ERROR: AddressSanitizer: FPE on unknown address 0x7ff46116e8f9 (pc 0x7ff46116e8f9 bp 0x502000002b10 sp 0x7ffc49282d60 T0)
    #0 0x7ff46116e8f9 in gf_opus_parse_packet_header media_tools/av_parsers.c:11479
    #1 0x7ff4618ce40f in gf_inspect_dump_opus_internal filters/inspect.c:1830
    #2 0x5610acd70b66 in dump_isom_opus /home/user/target/mp4box_dyn/gpac_asan/gpac/applications/mp4box/filedump.c:1501

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/2/2_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3159
  https://www.cve.org/CVERecord?id=CVE-2025-55662
  https://infosec.exchange/@sigdevel/116710224797830572


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

