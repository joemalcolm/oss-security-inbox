X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/4
Message-ID: <trinity-9c6c062b-8bac-4cad-97d1-91eaa7c543f4-1781381348293@trinity-msg-rest-gmx-gmx-live-6759fbb69b-s545h>
Date: Sat, 13 Jun 2026 20:09:08 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55652: Heap-based Buffer Overflow in GPAC/MP4Box via gf_isom_vp_config_new on crafted MP4 with malformed VP codec configuration
Content-Type: text/plain; charset=utf-8


Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (74fecde32cd477ab097f3e6db55a32b259f3313d)
CVE:       CVE-2025-55652
CWE:       CWE-122 (Heap-based Buffer Overflow)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box runs a DASH segmentation on a crafted MP4 file containing
  malformed VP codec configuration data in the stsd box (including an
  unknown D0ncv box type), gf_isom_vp_config_new() in isomedia/avc_ext.c
  does not sufficiently validate buffer boundaries when allocating the
  VP codec configuration box.

  The function allocates an undersized 88-byte box structure and then
  writes VP/NALU configuration data beyond it. AddressSanitizer reports
  a heap-buffer-overflow WRITE of size 8 at isomedia/avc_ext.c:1962, 136
  bytes after the 88-byte heap region, reached via mp4_mux_setup_pid()
  while MP4Box sets up the PID for the crafted track during DASH
  segmentation.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -dash 10000 ./18_poc.mp4

Asan-log:
==4147309==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x508000003180 at pc 0x55cc296f3879 bp 0x7ffda97c9590 sp 0x7ffda97c9588
WRITE of size 8 at 0x508000003180 thread T0
    #0 0x55cc296f3878 in gf_isom_vp_config_new isomedia/avc_ext.c:1962
    #1 0x55cc2a01734f in mp4_mux_setup_pid filters/mux_isom.c:2895
    #2 0x55cc29beb268 in gf_filter_pid_configure filter_core/filter_pid.c:919

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/18/18_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3242
  https://www.cve.org/CVERecord?id=CVE-2025-55652
  https://infosec.exchange/@sigdevel/116736829161374790


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

