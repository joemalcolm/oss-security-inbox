X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/16
Message-ID: <trinity-bd06c00f-20da-41ef-932f-b100d665785f-1792741618415@trinity-msg-rest-gmx-gmx-live-5d6886bf55-vrcrn>
Date: Fri, 23 Oct 2026 07:46:58 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60491: heap use-after-free in GPAC/MP4Box dasher_flush_segment via crafted MPEG-2 TS input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1698-gfc2009fa7-master
           Commit fc2009fa75631960743f8f7855dda8998167b5ab
Fixed:     f6128214feb69cd689e4b9944a2621bc4ad8faf0
CVE:       CVE-2025-60491
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  8.8 HIGH (AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box contains a heap use-after-free in dasher_flush_segment() at
  filters/dasher.c:8062. While processing a crafted MPEG-2 Transport Stream,
  dasher_configure_pid() frees a 1096-byte PID context during stream
  reconfiguration but leaves a stale reference. The segment-flush path later
  reads four bytes at offset 336 in the freed object.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1698-gfc2009fa7-master at commit
  fc2009fa75631960743f8f7855dda8998167b5ab.

Impact:
  The invalid heap read causes MP4Box to terminate, resulting in denial of
  service. Because freed memory may be replaced with attacker-influenced
  data, arbitrary code execution cannot be ruled out.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -dash 1000 61_dasher_flush_segment_filters_dasher_c_8062

ASan log excerpt:
  ==21426==ERROR: AddressSanitizer: heap-use-after-free on address 0x519000017dd0
      #0 in dasher_flush_segment filters/dasher.c:8062
      #1 in dasher_process filters/dasher.c:9423
      #2 in gf_filter_process_task filter_core/filter.c:3208

  The allocation and free traces both identify dasher_configure_pid().

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/61/61_dasher_flush_segment_filters_dasher_c_8062

References:
  https://github.com/gpac/gpac/issues/3326
  https://github.com/gpac/gpac/commit/f6128214feb69cd689e4b9944a2621bc4ad8faf0
  https://www.cve.org/CVERecord?id=CVE-2025-60491
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60491.json
  https://infosec.exchange/@sigdevel/117451513352278768


——
Best regards, Alexander A. Shvedov
@sigdevel
