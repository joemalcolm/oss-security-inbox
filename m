X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/27/1
Message-ID: <trinity-a5d78fc9-2bf0-4c15-94d0-dc628c30a98b-1782504330129@trinity-msg-rest-gmx-gmx-live-7bdfdcd756-q5252>
Date: Fri, 26 Jun 2026 20:05:30 +0000
From: "Alexander A. Shvedov" <shvedov@....fr>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60465: Use-After-Free in GPAC/MP4Box via gf_filter_pid_inst_swap on crafted MPEG-2 TS file
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (see References)
CVE:       CVE-2025-60465
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The gf_filter_pid_inst_swap() function in GPAC's filter session core
  (filter_core/filter_pid.c:633) swaps PID instance references during PID
  reconfiguration. When MP4Box inspects a crafted MPEG-2 TS file containing
  corrupted PMT descriptors and invalid stream configurations, the function
  frees the ctx->pid_inst structure (a 336-byte allocation) at
  filter_core/filter_pid.c:716 inside gf_filter_pid_configure() but does
  not reset the pointer to NULL afterwards.

  A subsequent code path within the same reconfiguration call dereferences
  the now-dangling ctx->pid_inst pointer, performing a READ of 8 bytes at
  address 0x513000000598 (24 bytes inside the freed region), resulting in a
  heap-use-after-free and process crash (Denial of Service).

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: --static-build --static-bin --static-modules --enable-debug --extra-cflags="-g -O0" ;
  -Command: ./MP4Box -info 34_gf_filter_pid_inst_swap_filter_core_filter_pid_c_633

Asan-log:
==1992184==ERROR: AddressSanitizer: heap-use-after-free on address 0x513000000598 at pc 0x7f2c95a88277 bp 0x7ffd4ffcb9e0 sp 0x7ffd4ffcb9d8
READ of size 8 at 0x513000000598 thread T0
    #0 0x7f2c95a88276 in gf_filter_pid_inst_swap filter_core/filter_pid.c:633
    #1 0x7f2c95a88276 in gf_filter_pid_configure filter_core/filter_pid.c:919
    #2 0x7f2c95a89a22 in gf_filter_pid_connect_task filter_core/filter_pid.c:1311

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/34/34_gf_filter_pid_inst_swap_filter_core_filter_pid_c_633

References:
  https://github.com/gpac/gpac/issues/3283
  https://www.cve.org/CVERecord?id=CVE-2025-60465
  https://infosec.exchange/@sigdevel/116778494176930561


——
Best regards, Alexander A. Shvedov
@sigdevel
