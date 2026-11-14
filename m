X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/14/14
Message-ID: <trinity-59d6f532-9915-4365-a29e-4c82bd78de65-1794668550016@trinity-msg-rest-gmx-gmx-live-6b6d8476df-2872k>
Date: Sat, 14 Nov 2026 15:02:30 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-128240: GPAC/MP4Box: Use-After-Free in gf_sg_proto_del During XMT Scene Teardown
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  Through 26.07.0 (per the published CVE record)
           Reproduced on 26.08-DEV-rev263-g3f056542b-master
           Commit 3f056542b377cc73677d19490bfe1b46c52c9be7
Fixed:     a2e5c62c213b5329a4572fe8e7c333e1ca26d028
CVE:       CVE-2026-128240
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  After importing a crafted XMT scene as chapter input, MP4Box tears down
  the scene-loading filter. gf_sg_reset() frees unregistered prototypes even
  though the commands that declared them still hold references in
  new_proto_list.

  Later command cleanup reaches gf_sg_proto_del() through
  gf_sg_command_del() and accesses an already freed prototype. The supplied
  GDB trace shows SIGSEGV in gf_list_find(), called from gf_sg_proto_del()
  at scenegraph/vrml_proto.c:108. Although the original report title
  describes a NULL pointer dereference, the accepted fix and published CVE
  identify a use-after-free caused by incorrect prototype ownership during
  teardown.

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

    ./MP4Box -chap ./223_gf_sg_proto_del_scenegraph_vrml_proto_c.xmt /tmp/1 -out /dev/null

GDB log excerpt:
  Program received signal SIGSEGV, Segmentation fault.
  #0  gf_list_find (ptr=0x19af880, item=<optimized out>) at utils/list.c:738
  #1  gf_list_del_item (ptr=0x19af880, item=item@...ry=0x19938c0) at utils/list.c:746
  #2  0x000000000057c104 in gf_sg_proto_del (proto=0x19938c0) at scenegraph/vrml_proto.c:108
  #3  0x000000000051e9bd in gf_sg_command_del (com=0x1a50d30) at scenegraph/commands.c:131
  #4  0x00000000008bf103 in gf_sm_au_del (sc=0x1990d70, au=0x1a50df0) at scene_manager/scene_manager.c:113

Fix:
  Use a GPAC build containing the following merged fix, or apply the patch.
  It leaves unregistered prototypes owned by their declaring commands,
  clears parent_graph when the scene graph is reset, and guards accesses to
  parent_graph in gf_sg_proto_del().

    https://github.com/gpac/gpac/commit/a2e5c62c213b5329a4572fe8e7c333e1ca26d028

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/223/223_gf_sg_proto_del_scenegraph_vrml_proto_c.xmt

References:
  https://github.com/gpac/gpac/issues/4031
  https://github.com/gpac/gpac/pull/4037
  https://github.com/gpac/gpac/commit/a2e5c62c213b5329a4572fe8e7c333e1ca26d028
  https://www.cve.org/CVERecord?id=CVE-2026-128240
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/128xxx/CVE-2026-128240.json
  https://www.vulncheck.com/advisories/gpac-through-26.07.0-use-after-free-in-gf-sg-proto-del-during-scene-teardown


——
Best regards, Alexander A. Shvedov
@sigdevel
