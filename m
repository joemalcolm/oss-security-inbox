X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/14
Message-ID: <trinity-902a835f-5fa4-4ba9-9cc5-c9967319ec3c-1792741570705@trinity-msg-rest-gmx-gmx-live-5d6886bf55-dz98s>
Date: Fri, 23 Oct 2026 07:46:10 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60489: NULL pointer dereference in GPAC/MP4Box dasher_insert_timeline_entry via crafted MP4 input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1692-g23819fdc0-master
           Commit 23819fdc02be8d3e92f0ef84831625d51981d7d2
Fixed:     4860a1a6f128ccc9ae37b4b738d22029f9672457
CVE:       CVE-2025-60489
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box dereferences a near-NULL pointer in dasher_insert_timeline_entry()
  at filters/dasher.c:7760 while creating a DASH segment timeline. Corrupted
  DTS metadata in a crafted MP4 file produces an empty segment. A call to
  gf_list_last() then returns NULL, but the returned timeline-entry pointer
  is used without validation, causing a read at offset 0x0c.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1692-g23819fdc0-master at commit
  23819fdc02be8d3e92f0ef84831625d51981d7d2.

Impact:
  DASH packaging of attacker-controlled input causes an immediate MP4Box
  crash and denial of service. The observed fault is a near-NULL read;
  arbitrary code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -segment-timeline -dash 10000 60_dasher_insert_timeline_entry_filters_dasher_c_7760

ASan log excerpt:
  ==21798==ERROR: AddressSanitizer: SEGV on unknown address 0x00000000000c
  ==21798==The signal is caused by a READ memory access.
  ==21798==Hint: address points to the zero page.
      #0 in dasher_insert_timeline_entry filters/dasher.c:7760
      #1 in dasher_insert_timeline_entry filters/dasher.c:7623
      #2 in dasher_flush_segment filters/dasher.c:8005

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/60/60_dasher_insert_timeline_entry_filters_dasher_c_7760

References:
  https://github.com/gpac/gpac/issues/3325
  https://github.com/gpac/gpac/commit/4860a1a6f128ccc9ae37b4b738d22029f9672457
  https://www.cve.org/CVERecord?id=CVE-2025-60489
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60489.json
  https://infosec.exchange/@sigdevel/117451521960820132


——
Best regards, Alexander A. Shvedov
@sigdevel
