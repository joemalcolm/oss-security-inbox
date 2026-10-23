X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/19
Message-ID: <trinity-5895e7e2-e352-4fdf-b6d4-0e8c9bab4539-1792741671151@trinity-msg-rest-gmx-gmx-live-5d6886bf55-pzz8g>
Date: Fri, 23 Oct 2026 07:47:51 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60497: NULL pointer dereference in GPAC/MP4Box GetESD via crafted MP4 input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1780-g50b5741f2-master
           Commit 50b5741f291126b610c59db433fc02e8a17f0c5d
Fixed:     91083fcfce01aa596a13a6962768d13a60bfc8bb
CVE:       CVE-2025-60497
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H; CISA assessment)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box dereferences a NULL pointer in GetESD() at isomedia/track.c:107
  during scene loading. A crafted MP4 sample description contains an unknown
  avC9 atom instead of a valid avcC configuration box. The Object Descriptor
  loading path nevertheless attempts to retrieve the ES descriptor from the
  invalid sample entry.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1780-g50b5741f2-master at commit
  50b5741f291126b610c59db433fc02e8a17f0c5d.

Impact:
  Exporting the crafted scene causes an immediate MP4Box crash and denial of
  service. The observed fault is a NULL read; arbitrary code execution was
  not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -svg 62_GetESD_isomedia_track_c_107

ASan log excerpt:
  ==852440==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000
  ==852440==The signal is caused by a READ memory access.
  ==852440==Hint: address points to the zero page.
      #0 in GetESD isomedia/track.c:107
      #1 in GetESDForTime isomedia/track.c:325
      #2 in gf_isom_get_root_od isomedia/isom_read.c:764

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/62/62_GetESD_isomedia_track_c_107

References:
  https://github.com/gpac/gpac/issues/3336
  https://github.com/gpac/gpac/commit/91083fcfce01aa596a13a6962768d13a60bfc8bb
  https://www.cve.org/CVERecord?id=CVE-2025-60497
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60497.json
  https://infosec.exchange/@sigdevel/117451504006040011


——
Best regards, Alexander A. Shvedov
@sigdevel
