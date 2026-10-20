X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/7
Message-ID: <trinity-ce73d025-5535-4c7d-b130-141b026e3dfb-1792493331891@trinity-msg-rest-gmx-gmx-live-5d6886bf55-g4jzq>
Date: Tue, 20 Oct 2026 10:48:52 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55654: Use-after-free in GPAC/MP4Box gf_filter_pid_get_packet via crafted NHML export input
Content-Type: text/plain; charset=utf-8


Product:   GPAC (MP4Box)
Affected:  GPAC/MP4Box 2.4; reproduced at commits
           63eccc33d4a2b731ebb31581ff5673a2c0b13ad4 and
           0ab2af43da6b89a556ce52086057d1812ceade9e
Fixed:     0ccd2927c7145f5ab0352c5b15f787757b34eb18
CVE:       CVE-2025-55654
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H; BDU assessment)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  A heap use-after-free occurs when MP4Box exports a crafted media file
  through the NHML path. gf_filter_pid_get_packet() in
  filter_core/filter_pid.c may access a GF_FilterPid object after the
  object has been released by gf_filter_pid_del().

  AddressSanitizer reports a read of size 8 at filter_core/filter_pid.c:6792,
  at the start of a previously freed 336-byte heap region. The stale PID
  is read by gf_filter_pid_get_packet() from fileout_process() while the
  export filter graph is running.

  The issue was reproduced against the original tested revision and again
  at commit 0ab2af43da6b89a556ce52086057d1812ceade9e. GPAC confirmed the
  report and fixed it in commit 0ccd2927c7145f5ab0352c5b15f787757b34eb18.

Impact:
  Processing attacker-controlled input with the affected MP4Box command
  causes an immediate process crash and denial of service. Because this is
  a heap use-after-free, memory corruption is present, but arbitrary code
  execution has not been demonstrated in the supplied report.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -nhml trackID 22_data -out /dev/null

ASan log excerpt from the retest at commit 0ab2af43da6b89a556ce52086057d1812ceade9e:
  ==1387528==ERROR: AddressSanitizer: heap-use-after-free on address 0x513000001700
  READ of size 8 at 0x513000001700 thread T0
      #0 0x7f1e870ac6d7 in gf_filter_pid_get_packet filter_core/filter_pid.c:6792
      #1 0x7f1e874531e3 in fileout_process filters/out_file.c:487
      #2 0x7f1e87110cc1 in gf_filter_process_task filter_core/filter.c:3179
      #3 0x7f1e870e4215 in gf_fs_thread_proc filter_core/filter_session.c:2420
      #4 0x7f1e870e9474 in gf_fs_run filter_core/filter_session.c:2727
      #5 0x7f1e86c7dc62 in gf_media_export_filters media_tools/media_export.c:1375

  0x513000001700 is located 0 bytes inside of 336-byte region
  [0x513000001700,0x513000001850)
  freed by thread T0 here:
      #0 0x7f1e880f3918 in free asan_malloc_linux.cpp:52
      #1 0x7f1e870784fc in gf_filter_pid_del filter_core/filter_pid.c:5899

  previously allocated by thread T0 here:
      #0 0x7f1e880f4c77 in malloc asan_malloc_linux.cpp:69
      #1 0x7f1e870a4923 in gf_filter_pid_inst_new filter_core/filter_pid.c:105
      #2 0x7f1e870a4923 in gf_filter_pid_configure filter_core/filter_pid.c:868

  SUMMARY: AddressSanitizer: heap-use-after-free
    filter_core/filter_pid.c:6792 in gf_filter_pid_get_packet

Fix:
  Update to a GPAC revision containing commit:

    0ccd2927c7145f5ab0352c5b15f787757b34eb18

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/22/22_data

References:
  https://github.com/gpac/gpac/issues/3249
  https://github.com/gpac/gpac/commit/0ccd2927c7145f5ab0352c5b15f787757b34eb18
  https://www.cve.org/CVERecord?id=CVE-2025-55654
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/55xxx/CVE-2025-55654.json
  https://infosec.exchange/@sigdevel/116769098607015606
  https://bdu.fstec.ru/vul/2025-10087

——
Best regards, Alexander A. Shvedov
@sigdevel
