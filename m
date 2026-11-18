X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/13
Message-ID: <trinity-25e3fe48-df0d-4edc-bdec-20b006a43b67-1794992697529@trinity-msg-rest-gmx-gmx-live-6b6d8476df-cvc7g>
Date: Wed, 18 Nov 2026 09:04:57 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-130630: GPAC/MP4Box: NULL Pointer Dereference in dasher_configure_pid via Crafted MPEG-2 TS Input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  GPAC >= 26.02.0 and < 26.07.0
           Reproduced on 26.03-DEV-rev27-g2ced063f0-master
           Commit 2ced063f0533b3321e106b840b00cd0f9f9bffe1
Fixed:     8ed521b69dcbf9a5a79b52b7d43d507ccb048c84
CVE:       CVE-2026-130630
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  During DASH PID disconnection, dasher_configure_pid() accesses ds2->set
  without first establishing that ds2 is non-NULL. A malformed MPEG-2 TS
  file triggers this path and a near-NULL read at filters/dasher.c:999.

Impact:
  Processing attacker-controlled input can terminate MP4Box and cause denial
  of service. Arbitrary code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -dash 1000 70_dasher_configure_pid

ASan log excerpt:
  ==2407120==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000178 (pc 0x7fab38bb7bdc bp 0x519000016380 sp 0x7ffdbe8458e0 T0)
  ==2407120==The signal is caused by a READ memory access.
  ==2407120==Hint: address points to the zero page.
      #0 0x7fab38bb7bdc in dasher_configure_pid filters/dasher.c:999
      #1 0x7fab38abe25e in gf_filter_pid_configure filter_core/filter_pid.c:950
      #2 0x7fab38ac43c1 in gf_filter_pid_disconnect_task filter_core/filter_pid.c:1457
      #3 0x7fab38aff634 in gf_fs_thread_proc filter_core/filter_session.c:2400

Fix:
  Update to GPAC v26.07.0 or a later release containing the fix:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/70/70_dasher_configure_pid

References:
  https://github.com/gpac/gpac/issues/3500
  https://github.com/gpac/gpac/commit/8ed521b69dcbf9a5a79b52b7d43d507ccb048c84
  https://www.cve.org/CVERecord?id=CVE-2026-130630
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/130xxx/CVE-2026-130630.json
  https://www.vulncheck.com/advisories/gpac-26.02.0-null-pointer-dereference-via-dasher-configure-pid


——
Best regards, Alexander A. Shvedov
@sigdevel
