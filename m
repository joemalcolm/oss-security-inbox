X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/26/3
Message-ID: <trinity-bc83d5f7-74e6-4f2d-8b79-2062887eac33-1782453578707@trinity-msg-rest-gmx-gmx-live-7bdfdcd756-2qr9l>
Date: Fri, 26 Jun 2026 05:59:38 +0000
From: "Alexander A. Shvedov" <shvedov@....fr>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60471: Use-After-Free in GPAC/MP4Box via gf_filter_pid_reconfigure_task_discard on crafted MPEG-2 TS file
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit 62714f27c64a3d1eb7e880f9eed2d38673cb43ce
CVE:       CVE-2025-60471
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  8.8 HIGH (AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The gf_filter_pid_reconfigure_task_discard() function in GPAC's filter
  session core (filter_core/filter_pid.c:1341) handles cleanup of filter
  PID reconfiguration tasks during media import. When MP4Box processes a
  crafted MPEG-2 TS file containing corrupted PMT descriptors and invalid
  packet streams, the filter session schedules a PID reconfiguration that
  triggers deallocation of a pid_inst structure via
  gf_filter_pid_inst_swap_delete() in filter_core/filter_pid.c:540.

  The function subsequently accesses the already-freed 336-byte pid_inst
  region at address 0x513000000580 without validating whether the instance
  has been released, resulting in a heap-use-after-free on a READ of 8
  bytes at that address and potential arbitrary code execution.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: --static-build --static-bin --static-modules --enable-debug --extra-cflags="-g -O0" ;
  -Command: ./MP4Box -info 31_gf_filter_pid_reconfigure_task_discard_filter_core_filter_pid_c_1341

Asan-log:
==26772==ERROR: AddressSanitizer: heap-use-after-free on address 0x513000000580 at pc 0x7fe607a8b95d bp 0x7fff9793a4b0 sp 0x7fff9793a4a8
READ of size 8 at 0x513000000580 thread T0
    #0 0x7fe607a8b95c in gf_filter_pid_reconfigure_task_discard filter_core/filter_pid.c:1341
    #1 0x7fe607ac2f65 in gf_fs_thread_proc filter_core/filter_session.c:2420
    #2 0x7fe607ac81c4 in gf_fs_run filter_core/filter_session.c:2727

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/31/31_gf_filter_pid_reconfigure_task_discard_filter_core_filter_pid_c_1341

References:
  https://github.com/gpac/gpac/issues/3279
  https://www.cve.org/CVERecord?id=CVE-2025-60471
  https://infosec.exchange/@sigdevel/116778301425195980


——
Best regards, Alexander A. Shvedov
@sigdevel
