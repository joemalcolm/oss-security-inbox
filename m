X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/22
Message-ID: <trinity-aa51b2db-9675-4c1b-8ef3-4d34d5ec0d1b-1794906295574@trinity-msg-rest-gmx-gmx-live-868fdc48d9-94b8f>
Date: Tue, 17 Nov 2026 09:04:55 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-71469: GPAC/MP4Box: Type Confusion in XMT/BT Scene Loader Causing a Crash in gf_scene_ns_connect_object
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  Versions before 26.02.0
           Reproduced on 2.5-DEV-rev1552-gbb16baf3d-master
           Commit bb16baf3d48737dfbc3ccdb6796e2951c280a1e5
Fixed:     62714f27c64a3d1eb7e880f9eed2d38673cb43ce
CVE:       CVE-2025-71469
CWE:       CWE-843 (Access of Resource Using Incompatible Type)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box crashes in gf_scene_ns_connect_object() at compositor/scene_ns.c:479
  while loading a crafted XMT scene. The underlying type confusion occurs
  in ctxload_process() in filters/load_bt_xmt.c: descriptors with a URL
  are passed to ODS_SetupOD() without checking that their tags identify
  object descriptors. A descriptor of an incompatible type reaches scene
  namespace binding, where strchr() attempts an invalid read near NULL.

  The supplied sample produces a read at address 0x000000000004. Although
  the original report describes the resulting near-NULL dereference, the
  published CVE classifies the underlying issue as CWE-843 (type confusion).

  The issue was reproduced in GPAC version
  2.5-DEV-rev1552-gbb16baf3d-master, recorded at commit
  bb16baf3d48737dfbc3ccdb6796e2951c280a1e5.

Impact:
  Loading attacker-controlled XMT input causes an immediate MP4Box crash
  and denial of service. Other GPAC applications using the same scene
  loader may also be affected. Arbitrary code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -info 30_compositor_scene_ns_c_479_in_gf_scene_ns_connect_object

ASan log excerpt:
  ==527221==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000004
  ==527221==The signal is caused by a READ memory access.
  ==527221==Hint: address points to the zero page.
      #0 in __strchr_avx2
      #1 in strchr
      #2 in gf_scene_ns_connect_object compositor/scene_ns.c:479
      #3 in ODS_SetupOD filters/dec_odf.c:140
      #4 in ctxload_process filters/load_bt_xmt.c:686

Fix:
  Update to GPAC v26.02.0 or later, or apply the fix commit listed above.
  The fix restricts calls to ODS_SetupOD() to supported object descriptor tags.

    https://github.com/gpac/gpac/releases/tag/v26.02.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/30/30_compositor_scene_ns_c_479_in_gf_scene_ns_connect_object

References:
  https://github.com/gpac/gpac/issues/3271
  https://github.com/gpac/gpac/commit/62714f27c64a3d1eb7e880f9eed2d38673cb43ce
  https://www.cve.org/CVERecord?id=CVE-2025-71469
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/71xxx/CVE-2025-71469.json


——
Best regards, Alexander A. Shvedov
@sigdevel
