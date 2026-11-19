X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/20/8
Message-ID: <trinity-d6fdf3f3-21bb-46ad-a6a9-fd4e313ea9dc-1795091596494@trinity-msg-rest-gmx-gmx-live-668fc4788c-ddddp>
Date: Thu, 19 Nov 2026 12:33:16 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-130634: GPAC/MP4Box: Heap Buffer Overflow in gf_mpd_resolve_url via Crafted DASH Manifest
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  GPAC < 26.07.0
           Reproduced on 26.03-DEV-rev300-g4bf468922-master
           Commit 4bf468922ac980cd35ce13eb36e02f2ec90f5142
Fixed:     5439b94d091e764742a6b108509516d3810bd034
CVE:       CVE-2026-130634
CWE:       CWE-122 (Heap-based Buffer Overflow)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  A crafted DASH manifest causes URL segment-template expansion to exceed
  the heap buffer allocated by gf_mpd_resolve_url(). Unchecked strcat()
  appends at media_tools/mpd.c:5684 write beyond the allocation. The
  supplied ASan trace records a 37-byte write immediately after a 110-byte
  heap region.

Impact:
  Processing an attacker-controlled DASH manifest causes a heap out-of-
  bounds write and can terminate MP4Box, causing denial of service.
  Arbitrary code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -info 75_media_tools_mpd_c_5684_gf_mpd_resolve_url

ASan log excerpt:
  ==3555701==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x7c74f65e06de at pc 0x7fc4f991c34d bp 0x7ffd8701c4c0 sp 0x7ffd8701bc80
  WRITE of size 37 at 0x7c74f65e06de thread T0
      #0 0x7fc4f991c34c in strcat ../../../../src/libsanitizer/asan/asan_interceptors.cpp:527
      #1 0x7fc4f844199a in gf_mpd_resolve_url media_tools/mpd.c:5684
      #2 0x7fc4f8482019 in gf_dash_resolve_url media_tools/dash_client.c:3672
      #3 0x7fc4f8484641 in gf_dash_download_init_segment media_tools/dash_client.c:5161
      #4 0x7fc4f84a18f5 in dash_setup_period_and_groups media_tools/dash_client.c:8254

Fix:
  Update to GPAC v26.07.0 or a later release containing the fix:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/75/75_media_tools_mpd_c_5684_gf_mpd_resolve_url

References:
  https://github.com/gpac/gpac/issues/3582
  https://github.com/gpac/gpac/commit/5439b94d091e764742a6b108509516d3810bd034
  https://www.cve.org/CVERecord?id=CVE-2026-130634
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/130xxx/CVE-2026-130634.json
  https://www.vulncheck.com/advisories/gpac-before-26.07.0-heap-based-buffer-overflow-via-gf-mpd-resolve-url


——
Best regards, Alexander A. Shvedov
@sigdevel
