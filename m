X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/15
Message-ID: <trinity-24971e1d-c47c-4264-b324-be068a2e00af-1792741237625@trinity-msg-rest-gmx-gmx-live-5d6886bf55-hj9nz>
Date: Fri, 23 Oct 2026 07:40:37 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60490: heap use-after-free in GPAC/MP4Box gf_filter_pid_send_event_downstream via crafted MPEG-2 TS input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1665-g3f20eb0cd-master
           Commit 3f20eb0cd22116367c036e6ffe6ace299b38d686
Fixed:     d0793f92e04fe284a25c2a9335cc5edc68deb6d4
CVE:       CVE-2025-60490
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  8.8 HIGH (AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H; BDU assessment)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box contains a heap use-after-free in
  gf_filter_pid_send_event_downstream() at filter_core/filter_pid.c:7919.
  While importing a crafted MPEG-2 Transport Stream, PID reconfiguration
  frees a 344-byte PID instance in gf_filter_pid_inst_swap_delete(). Event
  propagation later retains and reads the stale pointer.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1665-g3f20eb0cd-master at commit
  3f20eb0cd22116367c036e6ffe6ace299b38d686.

Impact:
  The observed read of eight bytes at the start of the freed object causes
  MP4Box to terminate, resulting in denial of service. Because the stale
  heap object may be replaced with attacker-influenced data, arbitrary code
  execution cannot be ruled out.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -add 54_gf_filter_pid_send_event_downstream_filter_core_filter_pid_c_7919 -new /dev/null

ASan log excerpt:
  ==58521==ERROR: AddressSanitizer: heap-use-after-free on address 0x513000000e40
      #0 in gf_filter_pid_send_event_downstream filter_core/filter_pid.c:7919
      #1 in gf_fs_thread_proc filter_core/filter_session.c:2393
      #2 in gf_fs_run filter_core/filter_session.c:2697

  The allocation and free traces identify gf_filter_pid_inst_new() and
  gf_filter_pid_inst_swap_delete(), respectively.

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/54/54_gf_filter_pid_send_event_downstream_filter_core_filter_pid_c_7919

References:
  https://github.com/gpac/gpac/issues/3315
  https://github.com/gpac/gpac/commit/d0793f92e04fe284a25c2a9335cc5edc68deb6d4
  https://www.cve.org/CVERecord?id=CVE-2025-60490
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60490.json
  https://infosec.exchange/@sigdevel/117456620287496398
  https://bdu.fstec.ru/vul/2025-13150


——
Best regards, Alexander A. Shvedov
@sigdevel
