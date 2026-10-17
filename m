X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/17/4
Message-ID: <trinity-5ce3437f-66cf-4fe6-8e25-d647b9f81af1-1792253466500@trinity-msg-rest-gmx-gmx-live-674956c65c-xwzmr>
Date: Sat, 17 Oct 2026 16:11:06 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55653: Divide by Zero in GPAC/MP4Box via gf_parse_lfrac on crafted MP4 with zero-denominator fraction
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (4bbb6e5f7cb827e56f32b2f7a5918b0b8e395eb8)
CVE:       CVE-2025-55653
CWE:       CWE-369 (Divide by Zero)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H)
Reporter:  @sigdevel (Alexander Shvedov) <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box imports a crafted MP4 file containing an invalid fractional
  value with a zero denominator in its metadata, the gf_parse_lfrac()
  function in utils/error.c performs division at line 2290 without
  validating that the divisor is non-zero. The zero denominator is
  supplied to gf_parse_lfrac() via filelist_next_url() during file list
  processing, triggering a SIGFPE (floating-point exception) that
  immediately terminates the process with no possibility of recovery.

  AddressSanitizer reports an FPE on unknown address at
  utils/error.c:2290, reached via filelist_next_url() /
  filelist_load_next() / filelist_process() while MP4Box imports the
  crafted track.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -add 21_poc.mp4 -new /dev/null

Asan-log:
AddressSanitizer:DEADLYSIGNAL
==2271001==ERROR: AddressSanitizer: FPE on unknown address 0x7fda0295e0a9 (pc 0x7fda0295e0a9 bp 0x7fd9ffb06e40 sp 0x7ffde8bd1ce0 T0)
    #0 0x7fda0295e0a9 in gf_parse_lfrac utils/error.c:2290
    #1 0x7fda03674ce1 in filelist_next_url filters/filelist.c:1029
    #2 0x7fda03675521 in filelist_load_next filters/filelist.c:1225
    #3 0x7fda03684257 in filelist_process filters/filelist.c:2011
    #4 0x7fda034ed4b1 in gf_filter_process_task filter_core/filter.c:3179
    #5 0x7fda034c0a05 in gf_fs_thread_proc filter_core/filter_session.c:2420
    #6 0x7fda034c5c64 in gf_fs_run filter_core/filter_session.c:2727
    #7 0x7fda02fa8e1d in gf_media_import media_tools/media_import.c:1601
    #8 0x55f8f6205be6 in import_file applications/mp4box/fileimport.c:1693

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: FPE utils/error.c:2290 in gf_parse_lfrac

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/21/21_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3247
  https://www.cve.org/CVERecord?id=CVE-2025-55653
  https://infosec.exchange/@sigdevel/116769079013422405


——
Best regards, Alexander A. Shvedov
@sigdevel
