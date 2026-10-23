X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/13
Message-ID: <trinity-555d4bcc-e1bd-4dd4-8108-8c69d5c32271-1792741309603@trinity-msg-rest-gmx-gmx-live-5d6886bf55-7h85r>
Date: Fri, 23 Oct 2026 07:41:49 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60487: NULL pointer dereference in GPAC/MP4Box gf_isom_get_esd via crafted XML input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1665-g3f20eb0cd-master
           Commit 3f20eb0cd22116367c036e6ffe6ace299b38d686
Fixed:     e6d01820d7bf3967d931fedb379ee5f209bc133b
CVE:       CVE-2025-60487
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  6.2 MEDIUM (AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H; BDU assessment)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box dereferences a near-NULL pointer in gf_isom_get_esd() at
  isomedia/isom_read.c:1386 when the NAL-dump command processes an empty or
  minimal XML file. The ISO media layer has no valid media descriptor, but
  the function reads a field at offset 0x50 without first validating the
  descriptor pointer.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1665-g3f20eb0cd-master at commit
  3f20eb0cd22116367c036e6ffe6ace299b38d686.

Impact:
  Processing attacker-controlled input causes an immediate MP4Box crash and
  denial of service. The observed fault is a near-NULL read; arbitrary code
  execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -dnal 1 56_gf_isom_get_esd_isomedia_isom_read_c_1386.xml

ASan log excerpt:
  ==3903891==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000050
  ==3903891==The signal is caused by a READ memory access.
  ==3903891==Hint: address points to the zero page.
      #0 in gf_isom_get_esd isomedia/isom_read.c:1386
      #1 in dump_isom_nal applications/mp4box/filedump.c:1397
      #2 in mp4box_main applications/mp4box/mp4box.c:6670

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  The reproducer and invocation details are available in the issue report.

References:
  https://github.com/gpac/gpac/issues/3320
  https://github.com/gpac/gpac/commit/e6d01820d7bf3967d931fedb379ee5f209bc133b
  https://www.cve.org/CVERecord?id=CVE-2025-60487
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60487.json
  https://infosec.exchange/@sigdevel/117456633862790827
  https://bdu.fstec.ru/vul/2025-13151


——
Best regards, Alexander A. Shvedov
@sigdevel
