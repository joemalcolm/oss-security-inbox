X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/5
Message-ID: <trinity-51f4b3fd-5f99-478e-ba6b-4dba931572cb-1781381695236@trinity-msg-rest-gmx-gmx-live-6759fbb69b-dsxc4>
Date: Sat, 13 Jun 2026 20:14:55 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55643: NULL Pointer Dereference in GPAC/MP4Box via TrackWriter handling on crafted MP4 with malformed mvcC/stsz metadata during DASH segmentation
Content-Type: text/plain; charset=utf-8


Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (74fecde32cd477ab097f3e6db55a32b259f3313d)
CVE:       CVE-2025-55643
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box runs a DASH segmentation on a crafted MP4 file with
  malformed metadata boxes (e.g. an mvcC or stsz box with extra
  bytes), the PID-to-track setup in the muxer can fail, leaving the
  TrackWriter pointer used by the fragmented MP4 muxing path NULL.

  The TrackWriter handling code in filters/mux_isom.c then performs a
  member access through this NULL pointer. UndefinedBehaviorSanitizer
  reports "member access within null pointer of type 'struct
  TrackWriter'" at filters/mux_isom.c:6621:35, reached after the dasher
  fails to connect a PID to the mp4mx filter ("Cannot create a new
  sample description entry (config changed) for finalized movie in
  fragmented mode").

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address,undefined -g" CXX="g++ -fsanitize=address,undefined -g" ;
  -Command: ./MP4Box -dash 10000 ./17_poc.mp4

Asan-log:
filters/mux_isom.c:6621:35: runtime error: member access within null pointer of type 'struct TrackWriter'

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/17/17_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3240
  https://www.cve.org/CVERecord?id=CVE-2025-55643
  https://infosec.exchange/@sigdevel/116736819671963019


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

