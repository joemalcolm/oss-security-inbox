X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/24/10
Message-ID: <trinity-6a251f69-774c-40fa-8ffc-262091b43751-1792855151183@trinity-msg-rest-gmx-gmx-live-5d6886bf55-mp6xl>
Date: Sat, 24 Oct 2026 15:19:11 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60493: GPAC/MP4Box: NULL Pointer Dereference in check_media_profile via Crafted MP4 Input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1699-g31becc9e0-master
           Commit 31becc9e08b88e525a4a62013a4000de1c0f8fd9
Fixed:     9afeea23f5c6584c02aefe1e1560c2844dfb8f7e
CVE:       CVE-2025-60493
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L; third-party assessment)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box dereferences a near-NULL pointer in check_media_profile() at
  applications/mp4box/mp4box.c:3883 while removing system tracks. A crafted
  or truncated MP4 file containing invalid MPEG-4 Object Descriptors can
  cause gf_isom_get_esd() to return a GF_ESD whose decoderConfig or
  decoderSpecificInfo fields are NULL. check_media_profile() accesses these
  fields without first validating them, causing a read at address
  0x000000000008.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1699-g31becc9e0-master at commit
  31becc9e08b88e525a4a62013a4000de1c0f8fd9.

Impact:
  Processing attacker-controlled input causes an immediate MP4Box crash and
  denial of service. The observed fault is a near-NULL read; arbitrary code
  execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -nosys 63_check_media_profile_applications_mp4box_mp4box_c_3883

ASan log excerpt:
  ==85294==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000008
  ==85294==The signal is caused by a READ memory access.
  ==85294==Hint: address points to the zero page.
      #0 in check_media_profile applications/mp4box/mp4box.c:3883
      #1 in remove_systems_tracks applications/mp4box/mp4box.c:3937
      #2 in remove_systems_tracks applications/mp4box/mp4box.c:3916

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/63/63_check_media_profile_applications_mp4box_mp4box_c_3883

References:
  https://github.com/gpac/gpac/issues/3328
  https://github.com/gpac/gpac/commit/9afeea23f5c6584c02aefe1e1560c2844dfb8f7e
  https://www.cve.org/CVERecord?id=CVE-2025-60493
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60493.json
  https://infosec.exchange/@sigdevel/117451489672249554


——
Best regards, Alexander A. Shvedov
@sigdevel
