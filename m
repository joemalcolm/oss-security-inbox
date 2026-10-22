X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/25
Message-ID: <trinity-aa70c3a0-15ae-4156-ba45-ae1667a59f07-1792670050164@trinity-msg-rest-gmx-gmx-live-5d6886bf55-szshb>
Date: Thu, 22 Oct 2026 11:54:10 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60496: Divide by zero in GPAC/MP4Box reframer via crafted truncated MP4 file
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1780-g50b5741f2-master
           Commit 50b5741f291126b610c59db433fc02e8a17f0c5d
Fixed:     f03c946aae129980f0426d4cbae9746d0536fee6
CVE:       CVE-2025-60496
CWE:       CWE-369 (Divide By Zero)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box performs a division by zero in reframer_send_packet() at
  filters/reframer.c:1026 when splitting a crafted, truncated MP4 file.
  Upstream parsing leaves stream parameters such as the timescale,
  estimated file size, or sample rate at zero. The reframer then uses a
  zero value as a denominator while calculating split boundaries.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1780-g50b5741f2-master at commit
  50b5741f291126b610c59db433fc02e8a17f0c5d.

Impact:
  Splitting the crafted file raises SIGFPE and terminates MP4Box, resulting
  in denial of service. Arbitrary code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -split-size 8000 65_reframer_send_packet_filters_reframer_c_1026

ASan log excerpt:
  [IsoMedia] File truncated, aborting read for track 2 after 2 / 51 samples
  [Reframer] split computed using current estimation of file size (102487)
  AddressSanitizer:DEADLYSIGNAL
  ==573621==ERROR: AddressSanitizer: FPE on unknown address 0x7f1bfc2de393
      #0 in reframer_send_packet filters/reframer.c:1026
      #1 in reframer_process filters/reframer.c:2698
      #2 in gf_filter_process_task filter_core/filter.c:3208
      #3 in gf_fs_thread_proc filter_core/filter_session.c:2393

  SUMMARY: AddressSanitizer: FPE
    filters/reframer.c:1026 in reframer_send_packet

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/65/65_reframer_send_packet_filters_reframer_c_1026

References:
  https://github.com/gpac/gpac/issues/3334
  https://github.com/gpac/gpac/commit/f03c946aae129980f0426d4cbae9746d0536fee6
  https://www.cve.org/CVERecord?id=CVE-2025-60496
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60496.json
  https://infosec.exchange/@sigdevel/117451461416101711


——
Best regards, Alexander A. Shvedov
@sigdevel
