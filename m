X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/16/7
Message-ID: <trinity-ead38a9a-6e6b-4219-a61a-437763d41557-1794850794964@trinity-msg-rest-gmx-gmx-live-868fdc48d9-59hwz>
Date: Mon, 16 Nov 2026 17:39:55 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-71466: GPAC/MP4Box: NULL Pointer Dereference in m2tsdmx_update_sdt via Crafted MPEG-2 TS Input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  Versions before 26.02.0
           Reproduced on 2.5-DEV-rev1552-gbb16baf3d-master
           Commit bb16baf3d48737dfbc3ccdb6796e2951c280a1e5
Fixed:     62714f27c64a3d1eb7e880f9eed2d38673cb43ce
CVE:       CVE-2025-71466
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box crashes in m2tsdmx_update_sdt() at filters/dmx_m2ts.c:218
  while processing a crafted MPEG-2 Transport Stream file. Malformed
  Service Description Table data can leave service or provider name
  pointers NULL. The function accesses these strings without checking
  them, causing a NULL read. The observed failure occurs after the
  demuxer reports an invalid descriptor size of 4095.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1552-gbb16baf3d-master, recorded at commit
  bb16baf3d48737dfbc3ccdb6796e2951c280a1e5.

Impact:
  Inspecting attacker-controlled MPEG-2 TS input causes an immediate
  MP4Box crash and denial of service. The observed fault is a NULL read;
  arbitrary code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -info 26_m2tsdmx_update_sdt_filters_dmx_m2ts_c_218

ASan log excerpt:
  ==416312==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000
  ==416312==The signal is caused by a READ memory access.
  ==416312==Hint: address points to the zero page.
      #0 in m2tsdmx_update_sdt filters/dmx_m2ts.c:218
      #1 in m2tsdmx_declare_pid filters/dmx_m2ts.c:679
      #2 in m2tsdmx_setup_program filters/dmx_m2ts.c:739

Fix:
  Update to GPAC v26.02.0 or later, or apply the fix commit listed above.

    https://github.com/gpac/gpac/releases/tag/v26.02.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/26/26_m2tsdmx_update_sdt_filters_dmx_m2ts_c_218

References:
  https://github.com/gpac/gpac/issues/3267
  https://github.com/gpac/gpac/commit/62714f27c64a3d1eb7e880f9eed2d38673cb43ce
  https://www.cve.org/CVERecord?id=CVE-2025-71466
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/71xxx/CVE-2025-71466.json


——
Best regards, Alexander A. Shvedov
@sigdevel
