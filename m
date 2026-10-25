X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/1
Message-ID: <trinity-09328361-de72-42ba-aad3-5cd095979d88-1792918105711@trinity-msg-rest-gmx-gmx-live-5d6886bf55-cxkd7>
Date: Sun, 25 Oct 2026 08:48:25 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60477: GPAC/MP4Box: NULL Pointer Dereference in gf_filter_pid_resolve_file_template_ex on crafted MP4 with special metadata
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (see References)
CVE:       CVE-2025-60477
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The gf_filter_pid_resolve_file_template_ex function in filter_core/filter_pid.c
  is responsible for resolving output file name templates during DASH segmentation
  in MP4Box. When input file metadata contains excessively long URLs or HTML-like
  special characters, the function reaches a strncmp() call at line 9045 without
  first verifying that one of its pointer arguments is non-NULL.

  The NULL pointer is passed directly to strncmp(), causing a READ dereference at
  address 0x000000000000, which terminates the process immediately. No arbitrary
  code execution was observed; the impact is limited to Denial of Service.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: --static-build --static-bin --static-modules --enable-debug --extra-cflags="-g -O0" ;
  -Command: ./MP4Box -dash 100 48_gf_filter_pid_resolve_file_template_ex_filter_core_filter_pid_c_9045

Asan-log:
==55159==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7f665c8c1cf0 bp 0x7fff48a84ca0 sp 0x7fff48a84430 T0)
==55159==The signal is caused by a READ memory access.
    #0 0x7f665c8c1cf0 in strncmp ../../../../src/libsanitizer/sanitizer_common/sanitizer_common_interceptors.inc:491
    #1 0x7f665b891e64 in gf_filter_pid_resolve_file_template_ex filter_core/filter_pid.c:9045
    #2 0x7f665b965c1e in dasher_setup_sources filters/dasher.c:4234

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0
  
PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/48/48_gf_filter_pid_resolve_file_template_ex_filter_core_filter_pid_c_9045

References:
  https://github.com/gpac/gpac/issues/3301
  https://nvd.nist.gov/vuln/detail/CVE-2025-60477
  https://infosec.exchange/@sigdevel/116658486442433074


——
Best regards, Alexander A. Shvedov
@sigdevel
