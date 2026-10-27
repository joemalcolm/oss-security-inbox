X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/2
Message-ID: <trinity-51686f6b-9a0f-4687-95ab-2f24c80b462e-1793139277653@trinity-msg-rest-gmx-gmx-live-674956c65c-gzs88>
Date: Tue, 27 Oct 2026 22:14:37 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60475: GPAC/MP4Box: Global Buffer Overflow Read in gf_ac4_parser_bs on crafted AC-4 stream
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (see References)
CVE:       CVE-2025-60475
CWE:       CWE-125 (Out-of-bounds Read)
CVSS 3.1:  Not assessed
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The gf_ac4_parser_bs() function in GPAC's AC-4 parser
  (media_tools/av_parsers.c:16140) accesses AC4_SAMPLE_DELTA_TABLE_48
  using a frame_rate_index read from the input stream without proper
  bounds checking. When MP4Box inspects a crafted AC-4 stream, an invalid
  index causes a 4-byte read beyond the global array boundary.

  AddressSanitizer reports a global-buffer-overflow read at address
  0x7f8be83df95c, located 4 bytes after the 56-byte global array
  AC4_SAMPLE_DELTA_TABLE_48. The read is reached through
  ac4dmx_probe_data() while probing the input file, crashing the process
  (Denial of Service).

  Crash is reproducible on the current master branch at the time of
  discovery (2.5-DEV-rev1593-gfe88c3545-master, commit
  fe88c3545aadd597b250ccf23271d5d3de50ccc8). No authentication or special
  privileges required beyond ability to provide a crafted file.

Reproduction:
  -Build-opts: --static-build --static-bin --static-modules --enable-debug --extra-cflags="-g -O0" ;
  -Command: ./MP4Box -info 40_gf_ac4_parser_bs_media_tools_av_parsers_c_16140

Asan-log:
==1823022==ERROR: AddressSanitizer: global-buffer-overflow on address 0x7f8be83df95c at pc 0x7f8be7592fce bp 0x7fff40bffe90 sp 0x7fff40bffe88
READ of size 4 at 0x7f8be83df95c thread T0
    #0 0x7f8be7592fcd in gf_ac4_parser_bs media_tools/av_parsers.c:16140
    #1 0x7f8be7ecfcbc in ac4dmx_probe_data filters/reframe_ac4.c:546
    #2 0x7f8be7b0262f in gf_filter_pid_raw_new filter_core/filter.c:4704

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0
  
PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/40/40_gf_ac4_parser_bs_media_tools_av_parsers_c_16140

References:
  https://github.com/gpac/gpac/issues/3291
  https://github.com/gpac/gpac/commit/e02d1fd24cdc26acb1b236ab38b3832cffcae21b
  https://www.cve.org/CVERecord?id=CVE-2025-60475
  https://infosec.exchange/@sigdevel/117456354623831878


——
Best regards, Alexander A. Shvedov
@sigdevel
