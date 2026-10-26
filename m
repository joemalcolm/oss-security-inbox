X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/18
Message-ID: <trinity-1869601d-7c9a-40f8-b586-d858af789d7c-1793043829042@trinity-msg-rest-gmx-gmx-live-674956c65c-lp6tz>
Date: Mon, 26 Oct 2026 19:43:49 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60467: GPAC/MP4Box: Use-After-Free in gf_filter_pid_inst_swap_delete_task on crafted MPEG-2 TS file
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (see References)
CVE:       CVE-2025-60467
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The gf_filter_pid_inst_swap_delete_task() function in GPAC's filter
  session core (filter_core/filter_pid.c:574) is a scheduled task that
  deletes a GF_FilterPidInstance structure during filter PID teardown.
  When MP4Box inspects a crafted MPEG-2 TS file that drives the filter
  pipeline through PID reconfiguration and deletion,
  gf_filter_pid_inst_swap_delete() at filter_core/filter_pid.c:544 frees
  the pid_inst allocation before the scheduled delete task has executed.

  The task callback subsequently performs a READ of 4 bytes at address
  0x513000000e7c from the already-freed structure without verifying that
  the instance is still valid, resulting in a heap-use-after-free and
  process crash (Denial of Service).

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: --static-build --static-bin --static-modules --enable-debug --extra-cflags="-g -O0" ;
  -Command: ./MP4Box -info 37_gf_filter_pid_inst_swap_delete_task_filter_core_filter_pid_c_574

Asan-log:
==2014352==ERROR: AddressSanitizer: heap-use-after-free on address 0x513000000e7c at pc 0x7fd50dc51b7d bp 0x7ffe25104a20 sp 0x7ffe25104a18
READ of size 4 at 0x513000000e7c thread T0
    #0 0x7fd50dc51b7c in gf_filter_pid_inst_swap_delete_task filter_core/filter_pid.c:574
    #1 0x7fd50dcc3465 in gf_fs_thread_proc filter_core/filter_session.c:2420
    #2 0x7fd50dcc86c4 in gf_fs_run filter_core/filter_session.c:2727

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0
  
PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/37/37_gf_filter_pid_inst_swap_delete_task_filter_core_filter_pid_c_574

References:
  https://github.com/gpac/gpac/issues/3286
  https://www.cve.org/CVERecord?id=CVE-2025-60467
  https://infosec.exchange/@sigdevel/116780518074911144
  https://github.com/gpac/gpac/commit/976dacf65cb6986a4e4f350fb8d3ed0a17dc3a77


——
Best regards, Alexander A. Shvedov
@sigdevel
