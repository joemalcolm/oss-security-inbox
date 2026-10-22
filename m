X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/24
Message-ID: <trinity-e3ae0ec9-7ab9-43b4-a551-9099edec3134-1792670001657@trinity-msg-rest-gmx-gmx-live-5d6886bf55-s25s4>
Date: Thu, 22 Oct 2026 11:53:21 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60479: NULL pointer dereference in GPAC/MP4Box StatSFVec2f via crafted BIFS scene
Content-Type: text/plain; charset=utf-8


Subject: CVE-2025-60479: NULL pointer dereference in GPAC/MP4Box StatSFVec2f via crafted BIFS scene

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1678-gb7ffd9f96-master
           Commit b7ffd9f96bc188dde148300d8c4e510b557563aa
Fixed:     75786eb61b7cc838b57c3d4f8004b4f13b5b724c
CVE:       CVE-2025-60479
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H; BDU assessment)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box dereferences a NULL pointer while collecting scene statistics for
  a crafted MPEG-4 BIFS scene. A malformed SFVec2f field causes the scene
  traversal to pass a NULL pointer to StatSFVec2f(), which dereferences it
  at scene_manager/scene_stats.c:192.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1678-gb7ffd9f96-master at commit
  b7ffd9f96bc188dde148300d8c4e510b557563aa.

Impact:
  A crafted MPEG-4 file processed by the scene-statistics command causes
  an immediate MP4Box crash and denial of service. The observed fault is a
  NULL read; arbitrary code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -nstat 58_StatSFVec2f_scene_manager_scene_stats_c_192

ASan log excerpt:
  MPEG-4 BIFS Scene Parsing
  Analysing Scene
  AddressSanitizer:DEADLYSIGNAL
  ==208690==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000
  ==208690==The signal is caused by a READ memory access.
      #0 in StatSFVec2f scene_manager/scene_stats.c:192
      #1 in StatSingleField scene_manager/scene_stats.c:265
      #2 in StatSingleField scene_manager/scene_stats.c:261
      #3 in gf_sm_stats_for_command scene_manager/scene_stats.c:584

  SUMMARY: AddressSanitizer: SEGV
    scene_manager/scene_stats.c:192 in StatSFVec2f

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/58/58_StatSFVec2f_scene_manager_scene_stats_c_192

References:
  https://github.com/gpac/gpac/issues/3322
  https://github.com/gpac/gpac/commit/75786eb61b7cc838b57c3d4f8004b4f13b5b724c
  https://www.cve.org/CVERecord?id=CVE-2025-60479
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60479.json
  https://infosec.exchange/@sigdevel/117451528497213210
  https://bdu.fstec.ru/vul/2025-13152

——
Best regards, Alexander A. Shvedov
@sigdevel
