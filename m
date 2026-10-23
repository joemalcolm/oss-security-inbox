X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/18
Message-ID: <trinity-17d49555-1d85-4620-9761-4f6df20c616f-1792741713341@trinity-msg-rest-gmx-gmx-live-5d6886bf55-b2zvx>
Date: Fri, 23 Oct 2026 07:48:33 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60494: invalid memory read in GPAC/MP4Box gf_props_equal_internal via crafted MP4 input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1699-g31becc9e0-master
           Commit 31becc9e08b88e525a4a62013a4000de1c0f8fd9
Fixed:     fcb9083292befe61d3e2466b18edfedba49da098
CVE:       CVE-2025-60494
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box performs an invalid read in gf_props_equal_internal() at
  filter_core/filter_props.c:867 while comparing PID property values. A
  crafted MP4 file containing malformed or truncated ODF descriptors and box
  structures causes an invalid pointer to be passed to memcmp(), which then
  reads from address 0x000011166094.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1699-g31becc9e0-master at commit
  31becc9e08b88e525a4a62013a4000de1c0f8fd9.

Impact:
  Importing attacker-controlled input causes an immediate MP4Box crash and
  denial of service. Arbitrary code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -add 64_gf_props_equal_internal_filter_core_filter_props_c_867

ASan log excerpt:
  ==4009521==ERROR: AddressSanitizer: SEGV on unknown address 0x000011166094
  ==4009521==The signal is caused by a READ memory access.
      #0 in __memcmp_avx2_movbe_rtm memcmp-avx2-movbe.S:84
      #1 in MemcmpInterceptorCommon sanitizer_common_interceptors.inc:834
      #2 in memcmp sanitizer_common_interceptors.inc:845
      #4 in gf_props_equal_internal filter_core/filter_props.c:867

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/64/64_gf_props_equal_internal_filter_core_filter_props_c_867

References:
  https://github.com/gpac/gpac/issues/3329
  https://github.com/gpac/gpac/commit/fcb9083292befe61d3e2466b18edfedba49da098
  https://www.cve.org/CVERecord?id=CVE-2025-60494
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60494.json
  https://infosec.exchange/@sigdevel/117451480059519560


——
Best regards, Alexander A. Shvedov
@sigdevel
