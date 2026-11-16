X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/16/8
Message-ID: <trinity-da32ae64-d4da-44e1-8ff2-14b070045760-1794850881011@trinity-msg-rest-gmx-gmx-live-6b6d8476df-bxtdv>
Date: Mon, 16 Nov 2026 17:41:21 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-71467: GPAC/MP4Box: NULL Pointer Dereference in gf_node_get_field_by_name via Crafted XMT Input
Content-Type: text/plain; charset=utf-8

 Product:   GPAC (MP4Box)
Affected:  Versions before 26.02.0
           Reproduced on 2.5-DEV-rev1552-gbb16baf3d-master
           Commit bb16baf3d48737dfbc3ccdb6796e2951c280a1e5
Fixed:     62714f27c64a3d1eb7e880f9eed2d38673cb43ce
CVE:       CVE-2025-71467
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box dereferences a NULL pointer in gf_node_get_field_by_name()
  at scenegraph/base_scenegraph.c:2088 while parsing a crafted MPEG-4
  XMT scene. Field-name resolution can reach this function with a node
  that was never created. The function accesses node->sgprivate->tag
  without first checking node and node->sgprivate, causing a NULL read.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1552-gbb16baf3d-master, recorded at commit
  bb16baf3d48737dfbc3ccdb6796e2951c280a1e5.

Impact:
  Parsing attacker-controlled XMT input causes an immediate MP4Box crash
  and denial of service. Other GPAC applications using the same scene
  graph code may also be affected. The observed fault is a NULL read;
  arbitrary code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -info 27_gf_node_get_field_by_name_scenegraph_base_scenegraph_c_2088

ASan log excerpt:
  ==418151==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000
  ==418151==The signal is caused by a READ memory access.
  ==418151==Hint: address points to the zero page.
      #0 in gf_node_get_field_by_name scenegraph/base_scenegraph.c:2088
      #1 in xmt_parse_element scene_manager/loader_xmt.c:1916
      #2 in xmt_node_start scene_manager/loader_xmt.c:2681

Fix:
  Update to GPAC v26.02.0 or later, or apply the fix commit listed above.
  The fix rejects a NULL node or NULL node private data before field lookup.

    https://github.com/gpac/gpac/releases/tag/v26.02.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/27/27_gf_node_get_field_by_name_scenegraph_base_scenegraph_c_2088

References:
  https://github.com/gpac/gpac/issues/3268
  https://github.com/gpac/gpac/commit/62714f27c64a3d1eb7e880f9eed2d38673cb43ce
  https://www.cve.org/CVERecord?id=CVE-2025-71467
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/71xxx/CVE-2025-71467.json

——
Best regards, Alexander A. Shvedov
@sigdevel
