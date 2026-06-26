X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/27/3
Message-ID: <trinity-3d2c365e-1bf1-4909-aa26-28c3a6a7fbc0-1782504533319@trinity-msg-rest-gmx-gmx-live-7bdfdcd756-khrsx>
Date: Fri, 26 Jun 2026 20:08:53 +0000
From: "Alexander A. Shvedov" <shvedov@....fr>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60473: NULL Pointer Dereference in GPAC/MP4Box via gf_filter_in_parent_chain on crafted MPEG-2 TS file
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (see References)
CVE:       CVE-2025-60473
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The gf_filter_in_parent_chain() function in GPAC's filter session core
  (filter_core/filter_pid.c:2145) walks the filter parent chain to
  determine whether a given filter is an ancestor of another, and is
  called during PID initialization from gf_filter_pid_init_task(). When
  MP4Box inspects a crafted MPEG-2 TS file containing corrupted PMT
  descriptors, reused PIDs, and malformed PES headers that produce an
  abnormal PID chain state, the function is reached with a NULL or
  uninitialized parent filter pointer.

  The function dereferences the parent pointer without validating it,
  attempting a READ at address 0x000000000008 (null+0x8 field offset),
  resulting in a segmentation fault and process crash (Denial of Service).

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: --static-build --static-bin --static-modules --enable-debug --extra-cflags="-g -O0" ;
  -Command: ./MP4Box -info 36_gf_filter_in_parent_chain_filter_core_filter_pid_c_2145

Asan-log:
==2015443==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000008 (pc 0x7f7ec2e52c65 bp 0x519000016d80 sp 0x7fffe9ee7390 T0)
==2015443==The signal is caused by a READ memory access.
    #0 0x7f7ec2e52c65 in gf_filter_in_parent_chain filter_core/filter_pid.c:2145
    #1 0x7f7ec2e7a796 in gf_filter_pid_init_task filter_core/filter_pid.c:4932
    #2 0x7f7ec2ec3465 in gf_fs_thread_proc filter_core/filter_session.c:2420

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/36/36_gf_filter_in_parent_chain_filter_core_filter_pid_c_2145

References:
  https://github.com/gpac/gpac/issues/3285
  https://www.cve.org/CVERecord?id=CVE-2025-60473
  https://infosec.exchange/@sigdevel/116780471059317580


——
Best regards, Alexander A. Shvedov
@sigdevel
