X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/21
Message-ID: <trinity-4a3251a7-b939-4ff6-b770-7c91579e8cac-1792669331412@trinity-msg-rest-gmx-gmx-live-674956c65c-vhwwp>
Date: Thu, 22 Oct 2026 11:42:11 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60469: NULL pointer dereference in GPAC/MP4Box AC-4 parser via crafted file
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1593-gfe88c3545-master
           Commit fe88c3545aadd597b250ccf23271d5d3de50ccc8
Fixed:     e02d1fd24cdc26acb1b236ab38b3832cffcae21b
CVE:       CVE-2025-60469
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H; BDU assessment)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box dereferences a NULL or invalid pointer while parsing a crafted
  AC-4 stream. The stream declares an unsupported presentation version
  and omits required substream group information. After reporting that
  presentation_version 0 is unsupported and that substream group 1 cannot
  be found, the error path reaches gf_ac4_presentation_ch_mode() in
  media_tools/av_parsers.c:15641 and reads from address 0x48.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1593-gfe88c3545-master at commit
  fe88c3545aadd597b250ccf23271d5d3de50ccc8.

Impact:
  A crafted AC-4 file processed by MP4Box can cause an application crash
  and denial of service. The observed fault is a near-NULL read; arbitrary
  code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -info 41_gf_ac4_presentation_ch_mode_media_tools_av_parsers_c_15641

ASan log excerpt:
  [AC4] Don't support presentation_version 0.
  [AC4] Cannot find substream group 1 for presentation 0
  AddressSanitizer:DEADLYSIGNAL
  ==1829578==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000048
  ==1829578==The signal is caused by a READ memory access.
      #0 in gf_ac4_presentation_ch_mode media_tools/av_parsers.c:15641
      #1 in gf_ac4_raw_frame media_tools/av_parsers.c:15976
      #2 in gf_ac4_parser_bs media_tools/av_parsers.c:16113
      #3 in ac4dmx_process filters/reframe_ac4.c:388

  SUMMARY: AddressSanitizer: SEGV
    media_tools/av_parsers.c:15641 in gf_ac4_presentation_ch_mode

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/41/41_gf_ac4_presentation_ch_mode_media_tools_av_parsers_c_15641

References:
  https://github.com/gpac/gpac/issues/3292
  https://github.com/gpac/gpac/commit/e02d1fd24cdc26acb1b236ab38b3832cffcae21b
  https://www.cve.org/CVERecord?id=CVE-2025-60469
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60469.json
  https://infosec.exchange/@sigdevel/117456377012352192
  https://bdu.fstec.ru/vul/2025-08611


——
Best regards, Alexander A. Shvedov
@sigdevel
