X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/8
Message-ID: <trinity-a1a21f3e-59d2-4dea-bf0d-f9043ac9f8a6-1781382043942@trinity-msg-rest-gmx-gmx-live-6759fbb69b-j7mdg>
Date: Sat, 13 Jun 2026 20:20:43 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55642: Divide by Zero in GPAC/MP4Box via avidmx_process on crafted AVI input with zero declared frames
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (f87b30611380e4dcd03cd4dd9ac553c0ec336826)
CVE:       CVE-2025-55642
CWE:       CWE-369 (Divide by Zero)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box processes a crafted AVI-like media file with invalid
  frame-count metadata (e.g. a 0/256 frame declaration), avidmx_process()
  in filters/dmx_avi.c does not sufficiently validate the frame count
  before using it as a divisor during bitrate computation.

  When the Dasher computes the bitrate from the bitstream because no
  bitrate property was assigned to the PID, the division by the invalid
  frame count triggers an uncaught floating-point exception, reported by
  AddressSanitizer as an FPE at filters/dmx_avi.c:639, reached via
  gf_dasher_process() while MP4Box runs a DASH segmentation on the
  crafted file.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -dash 1000 14_poc.mp4 -out /dev/null

Asan-log:
==1999695==ERROR: AddressSanitizer: FPE on unknown address 0x7f6e21811a6e (pc 0x7f6e21811a6e bp 0x51900001ff40 sp 0x7ffccf990130 T0)
    #0 0x7f6e21811a6e in avidmx_process filters/dmx_avi.c:639
    #1 0x7f6e2170e0a1 in gf_filter_process_task filter_core/filter.c:3179
    #2 0x7f6e216e2375 in gf_fs_thread_proc filter_core/filter_session.c:2174

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/14/14_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3196
  https://www.cve.org/CVERecord?id=CVE-2025-55642
  https://infosec.exchange/@sigdevel/116736787186993437


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

