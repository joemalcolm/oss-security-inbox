X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/21
Message-ID: <trinity-3d003c2e-71e2-4954-9a8a-7f5c3ad91dfd-1794906238759@trinity-msg-rest-gmx-gmx-live-6b6d8476df-qvpkx>
Date: Tue, 17 Nov 2026 09:03:58 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-71468: GPAC/MP4Box: NULL Pointer Dereference in gf_dash_group_get_audio_channels via Crafted DASH Manifest
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  Versions before 26.02.0
           Reproduced on 2.5-DEV-rev1552-gbb16baf3d-master
           Commit bb16baf3d48737dfbc3ccdb6796e2951c280a1e5
Fixed:     62714f27c64a3d1eb7e880f9eed2d38673cb43ce
CVE:       CVE-2025-71468
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box crashes in gf_dash_group_get_audio_channels() at
  media_tools/dash_client.c:10769 while processing a crafted DASH MPD.
  An AudioChannelConfiguration descriptor can omit schemeIdUri or value,
  leaving a NULL string pointer. The function uses these strings without
  validation; the supplied sample triggers a NULL read in strcmp().

  The issue was reproduced in GPAC version
  2.5-DEV-rev1552-gbb16baf3d-master, recorded at commit
  bb16baf3d48737dfbc3ccdb6796e2951c280a1e5.

Impact:
  Processing an attacker-controlled DASH manifest causes an immediate
  MP4Box crash and denial of service. GPAC DASH clients using the same
  code may also be affected. The observed fault is a NULL read;
  arbitrary code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -info 28_gf_dash_group_get_audio_channels_media_tools_dash_client_c_10769

ASan log excerpt:
  ==418758==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000
  ==418758==The signal is caused by a READ memory access.
  ==418758==Hint: address points to the zero page.
      #0 in strcmp
      #1 in gf_dash_group_get_audio_channels media_tools/dash_client.c:10769
      #2 in gf_dash_group_get_quality_info media_tools/dash_client.c:10970
      #3 in dashdmx_io_on_dash_event filters/dmx_dash.c:1329

Fix:
  Update to GPAC v26.02.0 or later, or apply the fix commit listed above.
  The fix skips descriptors whose scheme_id_uri or value pointer is NULL.

    https://github.com/gpac/gpac/releases/tag/v26.02.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/28/28_gf_dash_group_get_audio_channels_media_tools_dash_client_c_10769

References:
  https://github.com/gpac/gpac/issues/3269
  https://github.com/gpac/gpac/commit/62714f27c64a3d1eb7e880f9eed2d38673cb43ce
  https://www.cve.org/CVERecord?id=CVE-2025-71468
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/71xxx/CVE-2025-71468.json


——
Best regards, Alexander A. Shvedov
@sigdevel
