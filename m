X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/8
Message-ID: <trinity-47303db3-0a4b-49c3-be63-4ae8fb4b70b9-1792494823265@trinity-msg-rest-gmx-gmx-live-5d6886bf55-6nhrw>
Date: Tue, 20 Oct 2026 11:13:43 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55667: NULL pointer dereference in GPAC/MP4Box dump_isom_saps via crafted MP4 input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  GPAC/MP4Box 2.5-DEV-rev1672-gc9a31d0e1-master; reproduced at commit
           c9a31d0e1b649a30814c6d81c5461859ed63d075
Fixed:     e6d01820d7bf3967d931fedb379ee5f209bc133b
CVE:       CVE-2025-55667
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H; BDU assessment)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  A NULL pointer dereference occurs in dump_isom_saps() in
  applications/mp4box/filedump.c when MP4Box processes a crafted MP4 file
  whose track structure is missing a valid Sample Description box (stsd).

  The function iterates over track metadata to dump SAP (Sync Access Point)
  information without validating track metadata pointers before dereferencing
  them. When stsd is absent, the pointer holds a near-NULL value and the
  subsequent dereference at filedump.c:1743 reads from address 0x00000000001c
  (a 28-byte struct offset from NULL), triggering SIGSEGV.

  AddressSanitizer reports a SEGV on unknown address 0x00000000001c caused by
  a READ memory access at dump_isom_saps filedump.c:1743.

Impact:
  Processing attacker-controlled input with the affected MP4Box command
  causes an immediate process crash and denial of service. The faulting
  access is a near-NULL read; no evidence of arbitrary code execution or
  control-flow hijacking was observed.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -dsap 1 57_dump_isom_saps_filedump_c_1743

ASan log excerpt at commit c9a31d0e1b649a30814c6d81c5461859ed63d075:
  [iso file] Unknown box type sTsd in parent stbl
  [iso file] Track with no sample description box !
  AddressSanitizer:DEADLYSIGNAL
  ==620767==ERROR: AddressSanitizer: SEGV on unknown address 0x00000000001c
  (pc 0x563c09a0b677 bp 0x000000000001 sp 0x7ffe1b88e860 T0)
  ==620767==The signal is caused by a READ memory access.
  ==620767==Hint: address points to the zero page.
      #0 0x563c09a0b677 in dump_isom_saps
             applications/mp4box/filedump.c:1743
      #1 0x563c099f6ec2 in mp4box_main
             applications/mp4box/mp4box.c:6674
      #2 0x7fd6ae633ca7 in __libc_start_call_main
             ../sysdeps/nptl/libc_start_call_main.h:58
      #3 0x7fd6ae633d64 in __libc_start_main_impl
             ../csu/libc-start.c:360
      #4 0x563c099d60c0 in _start
             (MP4Box+0x4d0c0)

  SUMMARY: AddressSanitizer: SEGV
    applications/mp4box/filedump.c:1743 in dump_isom_saps

Fix:
  Update to a GPAC revision containing commit:

    e6d01820d7bf3967d931fedb379ee5f209bc133b

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/57/57_dump_isom_saps_filedump_c_1743

References:
  https://github.com/gpac/gpac/issues/3321
  https://github.com/gpac/gpac/commit/e6d01820d7bf3967d931fedb379ee5f209bc133b
  https://www.cve.org/CVERecord?id=CVE-2025-55667


——
Best regards, Alexander A. Shvedov
@sigdevel
