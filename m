X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/17
Message-ID: <trinity-9065dc27-4a2b-4e7b-989c-92aaef8d2c6f-1792741471221@trinity-msg-rest-gmx-gmx-live-5d6886bf55-7wl4b>
Date: Fri, 23 Oct 2026 07:44:31 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60492: uncontrolled recursion in GPAC/MP4Box BIFS decoder via crafted MP4 input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1687-ge44a4e2b0-master
           Commit e44a4e2b0d193566619ada71599e70255699da94
Fixed:     8e7b9a3a04331286b89d1803c65a2d6edc11b4c4
CVE:       CVE-2025-60492
CWE:       CWE-674 (Uncontrolled Recursion)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H; CISA assessment)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box can exhaust its process stack while decoding a crafted MPEG-4 BIFS
  scene. Deeply nested scene nodes cause repeated calls among
  gf_bifs_dec_node(), BD_DecMFFieldList(), gf_bifs_dec_field(), and
  gf_bifs_dec_node_list() without an effective recursion-depth limit.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1687-ge44a4e2b0-master at commit
  e44a4e2b0d193566619ada71599e70255699da94.

Impact:
  Exporting the crafted scene exhausts the process stack and terminates
  MP4Box, resulting in denial of service. Arbitrary code execution was not
  demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -x3d 59_Anchor_Create_scenegraph_mpeg4_nodes_c_171

ASan log excerpt:
  ==4071400==ERROR: AddressSanitizer: stack-overflow on address 0x7ffec640bac8
      #6 in gf_bifs_dec_node bifs/field_decode.c:905
      #7 in BD_DecMFFieldList bifs/field_decode.c:330
      #8 in gf_bifs_dec_field bifs/field_decode.c:569
      #9 in gf_bifs_dec_node_list bifs/field_decode.c:631
      #10 in gf_bifs_dec_node bifs/field_decode.c:933

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/59/59_Anchor_Create_scenegraph_mpeg4_nodes_c_171

References:
  https://github.com/gpac/gpac/issues/3324
  https://github.com/gpac/gpac/commit/8e7b9a3a04331286b89d1803c65a2d6edc11b4c4
  https://www.cve.org/CVERecord?id=CVE-2025-60492
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60492.json
  https://infosec.exchange/@sigdevel/117456655329648201


——
Best regards, Alexander A. Shvedov
@sigdevel
