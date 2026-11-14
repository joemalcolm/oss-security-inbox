X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/14/13
Message-ID: <trinity-2d0663da-526e-4108-9077-a05e7ae03d40-1794668473883@trinity-msg-rest-gmx-gmx-live-6b6d8476df-sxgx2>
Date: Sat, 14 Nov 2026 15:01:13 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124031: GPAC/MP4Box: Type Confusion in Appearance Handling via Crafted XMT Input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  Through 26.07.0 (per the published CVE record)
           Reproduced on 26.08-DEV-rev263-g3f056542b-master
           Commit 3f056542b377cc73677d19490bfe1b46c52c9be7
Fixed:     43a8329a90ae2907716b593cc3746458516c7c39
CVE:       CVE-2026-124031
CWE:       CWE-843 (Type Confusion)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  During chapter import from a crafted XMT scene, a Shape node can reference
  a node of an incompatible type, such as Conditional, in its appearance
  field. drawable_get_aspect_2d_mpeg4() and TraverseShape() cast that node
  to M_Appearance without first validating its node tag.

  The incompatible structure layout causes a non-node value to be read as
  the texture pointer. In the supplied trace, gf_sc_texture_get_handler() at
  compositor/texturing.c:370 passes the address of CTXLoad_OnActivate() to
  gf_node_get_tag(). Accessing p->sgprivate->tag at
  scenegraph/base_scenegraph.c:1345 then faults with SIGSEGV. The original
  report describes the crash as a NULL pointer dereference; the published
  CVE and fix identify the root cause as type confusion.

  The issue was reproduced in GPAC version
  26.08-DEV-rev263-g3f056542b-master at commit
  3f056542b377cc73677d19490bfe1b46c52c9be7.

Impact:
  Importing attacker-controlled XMT input can crash MP4Box and cause denial
  of service. Arbitrary code execution was not demonstrated in the supplied
  report.

Reproduction:
  The supplied report used a static debug build on Kali GNU/Linux, kernel
  7.1.5+kali-amd64, x86_64, built with GCC 15.3.0-2. Run:

    ./MP4Box -chap ./222_gf_node_get_tag_compositor_texturing_c_370.xmt /tmp/1 -out /dev/null

GDB log excerpt:
  Program received signal SIGSEGV, Segmentation fault.
  #0  0x000000000051857e in gf_node_get_tag (p=0xb7d210 <CTXLoad_OnActivate>) at scenegraph/base_scenegraph.c:1345
  #1  0x000000000113b40b in gf_sc_texture_get_handler (n=0xb7d210 <CTXLoad_OnActivate>) at compositor/texturing.c:370
  #2  0x00000000010dd542 in drawable_get_aspect_2d_mpeg4 (node=0x1985be0, asp=asp@...ry=0x19e1d40, tr_state=tr_state@...ry=0x19ceb00) at compositor/drawable.c:565
  #3  0x00000000010e0c83 in drawable_init_context_mpeg4 (drawable=drawable@...ry=0x1985c50, tr_state=tr_state@...ry=0x19ceb00) at compositor/drawable.c:806
  #4  0x00000000010fe659 in TraverseCurve2D (node=0x1985be0, rs=0x19ceb00, is_destroy=GF_FALSE) at compositor/mpeg4_geometry_2d.c:643

Fix:
  Use a GPAC build containing the following fix, or apply the patch. It
  validates the appearance node tag before M_Appearance fields are accessed.

    https://github.com/gpac/gpac/commit/43a8329a90ae2907716b593cc3746458516c7c39

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/222/222_gf_node_get_tag_compositor_texturing_c_370.xmt

References:
  https://github.com/gpac/gpac/issues/4030
  https://github.com/gpac/gpac/commit/43a8329a90ae2907716b593cc3746458516c7c39
  https://www.cve.org/CVERecord?id=CVE-2026-124031
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/124xxx/CVE-2026-124031.json
  https://www.vulncheck.com/advisories/gpac-through-26.07.0-type-confusion-via-drawable-get-aspect-2d-mpeg4


——
Best regards, Alexander A. Shvedov
@sigdevel
