X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/27/2
Message-ID: <trinity-c0618e08-4e60-467a-9693-dcc02ad83492-1782504453450@trinity-msg-rest-gmx-gmx-live-7bdfdcd756-mmr84>
Date: Fri, 26 Jun 2026 20:07:33 +0000
From: "Alexander A. Shvedov" <shvedov@....fr>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60466: Expired Pointer Dereference in GPAC/MP4Box via gf_filter_pid_get_packet on crafted MPEG-2 TS file
Content-Type: text/plain; charset=utf-8


Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (see References)
CVE:       CVE-2025-60466
CWE:       CWE-825 (Expired Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The gf_filter_pid_get_packet() function in GPAC's filter session core
  (filter_core/filter_pid.c:6827) retrieves the next available packet from
  a filter PID for processing by downstream filters such as the inspect
  filter. When MP4Box inspects a crafted MPEG-2 TS file with corrupted PMT
  descriptors and abnormal PCR discontinuities that drive the pipeline
  through PID deletion and re-enqueue paths, gf_filter_pid_del() frees the
  336-byte PID instance at filter_core/filter_pid.c:5933.

  The inspect filter subsequently calls gf_filter_pid_get_packet() on the
  invalidated PID without checking whether the PID object has been released,
  performing a READ of 8 bytes at address 0x513000002dc0 (start of the freed
  allocation) and crashing the process (Denial of Service).

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: --static-build --static-bin --static-modules --enable-debug --extra-cflags="-g -O0" ;
  -Command: ./MP4Box -info 35_gf_filter_pid_get_packet_filter_core_filter_pid_c_6827

Asan-log:
==1994506==ERROR: AddressSanitizer: heap-use-after-free on address 0x513000002dc0 at pc 0x7fdaa268b8b7 bp 0x7fff42a43b80 sp 0x7fff42a43b78
READ of size 8 at 0x513000002dc0 thread T0
    #0 0x7fdaa268b8b6 in gf_filter_pid_get_packet filter_core/filter_pid.c:6827
    #1 0x7fdaa2906374 in inspect_process filters/inspect.c:5218
    #2 0x7fdaa26ef401 in gf_filter_process_task filter_core/filter.c:3180

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/35/35_gf_filter_pid_get_packet_filter_core_filter_pid_c_6827

References:
  https://github.com/gpac/gpac/issues/3284
  https://www.cve.org/CVERecord?id=CVE-2025-60466
  https://infosec.exchange/@sigdevel/116780402249845037

——
Best regards, Alexander A. Shvedov
@sigdevel
