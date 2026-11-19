X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/20/10
Message-ID: <trinity-788dc103-5da9-4d15-9a4e-b3632606c171-1795091661838@trinity-msg-rest-gmx-gmx-live-668fc4788c-rd76x>
Date: Thu, 19 Nov 2026 12:34:21 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-130635: GPAC/MP4Box: Uncontrolled Recursion in dasher_gather_deps via Cyclic Stream Dependencies
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  GPAC < 26.07.0
           Reproduced on 26.03-DEV-rev309-g6aef013b4-master
           Commit 6aef013b43d25a05730aac3fff04248e54f65aac
Fixed:     5439b94d091e764742a6b108509516d3810bd034
CVE:       CVE-2026-130635
CWE:       CWE-674 (Uncontrolled Recursion)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  Malformed stream metadata in a crafted MPEG-2 TS file creates a cyclic
  DASH dependency chain. dasher_gather_deps() recursively follows the chain
  without detecting the cycle, repeatedly reaching filters/dasher.c:3777
  until the stack is exhausted. The observed stack overflow occurs while
  gf_list_insert() calls memmove().

Impact:
  Processing attacker-controlled input can terminate MP4Box and cause denial
  of service. Arbitrary code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -dash 1000 77_utils_list_c_718_gf_list_insert

ASan log excerpt:
  ==365990==ERROR: AddressSanitizer: stack-overflow on address 0x7ffe60d9dfd8 (pc 0x7f0ff59214c7 bp 0x7ffe60d9e820 sp 0x7ffe60d9dfd0 T0)
      #0 0x7f0ff59214c7 in memmove ../../../../src/libsanitizer/sanitizer_common/sanitizer_common_interceptors_memintrinsics.inc:100
      #1 0x7f0ff3d51e50 in gf_list_insert utils/list.c:718
      #2 0x7f0ff49b7191 in dasher_gather_deps filters/dasher.c:3776
      #3 0x7f0ff49b7343 in dasher_gather_deps filters/dasher.c:3777
      #4 0x7f0ff49b7343 in dasher_gather_deps filters/dasher.c:3777
      #5 0x7f0ff49b7343 in dasher_gather_deps filters/dasher.c:3777

Fix:
  Update to GPAC v26.07.0 or a later release containing the fix:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/77/77_utils_list_c_718_gf_list_insert

References:
  https://github.com/gpac/gpac/issues/3585
  https://github.com/gpac/gpac/commit/5439b94d091e764742a6b108509516d3810bd034
  https://www.cve.org/CVERecord?id=CVE-2026-130635
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/130xxx/CVE-2026-130635.json
  https://www.vulncheck.com/advisories/gpac-before-26.07.0-uncontrolled-recursion-via-dasher-gather-deps


——
Best regards, Alexander A. Shvedov
@sigdevel
