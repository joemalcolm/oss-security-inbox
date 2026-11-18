X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/12
Message-ID: <trinity-2b0834a7-2e12-49e9-bf8a-895248eff88d-1794992627576@trinity-msg-rest-gmx-gmx-live-868fdc48d9-lkwzj>
Date: Wed, 18 Nov 2026 09:03:47 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-71471: GPAC/MP4Box: Use of Uninitialized Memory in stbl_AddCTS via Crafted MP4 Input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  GPAC < 26.02.0
           Reproduced on 2.5-DEV-rev2077-g1aeceb11e-master
           Commit 1aeceb11e15d4e04fda73a36a36aa33d43b089e5
Fixed:     a8c83bd36ca074b81c39ae5ccc0c8580d098072a
CVE:       CVE-2025-71471
CWE:       CWE-908 (Use of Uninitialized Resource)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  Out-of-order composition time offsets in a crafted MP4 expose
  uninitialized sample-table state in stbl_AddCTS(). Import subsequently
  reaches Media_GetSampleDesc() with an inconsistent sample-description list
  and crashes at ptr->slots[itemNumber] in gf_list_get(), utils/list.c:672.

Impact:
  Processing attacker-controlled input can terminate MP4Box and cause denial
  of service. Arbitrary code execution was not demonstrated.

Reproduction:
  Run the tested GPAC build under GDB:

    ./MP4Box -add 69_utils_list_c_672 -new /dev/null

GDB backtrace excerpt:
  Program terminated with signal SIGSEGV, Segmentation fault.
  #0 in gf_list_get utils/list.c:672
  672             return ptr->slots[itemNumber];
  #1 in Media_GetSampleDesc isomedia/media.c:43
  #2 in Media_GetSample isomedia/media.c:557

Fix:
  Update to GPAC v26.02.0 or a later release containing the fix:

    https://github.com/gpac/gpac/releases/tag/v26.02.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/69/69_utils_list_c_672

References:
  https://github.com/gpac/gpac/issues/3412
  https://github.com/gpac/gpac/commit/a8c83bd36ca074b81c39ae5ccc0c8580d098072a
  https://www.cve.org/CVERecord?id=CVE-2025-71471
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/71xxx/CVE-2025-71471.json
  https://www.vulncheck.com/advisories/gpac-before-26.02.0-uninitialized-memory-use-in-stbl-addcts


——
Best regards, Alexander A. Shvedov
@sigdevel
