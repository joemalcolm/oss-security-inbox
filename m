X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/22
Message-ID: <trinity-7eef54e8-5351-4200-bb74-88c57def0d73-1794218397869@trinity-msg-rest-gmx-gmx-live-787976c89c-vm9dn>
Date: Mon, 9 Nov 2026 09:59:57 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124311: VVdeC/vvdecapp: NULL Pointer Dereference in InterPrediction::xPredInterBlk via Reference Wrap-Around
Content-Type: text/plain; charset=utf-8

Product:   VVdeC (vvdecapp)
Affected:  Versions through 3.2.1
           Reproduced build: 3.3.0-dev
           Commit 76f087e5936336b951801576514c0fd42976b7eb
Fixed:     fb73aca37b48f89814f57edbc8072a37d47bbe06
CVE:       CVE-2026-124311
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  A crafted VVC bitstream switches to an SPS with reference wrap-around
  enabled while retaining the picture dimensions. Reference pictures decoded
  under the previous SPS can lack the wrap-around reconstruction buffer.
  Inter prediction selects that missing buffer based on the new SPS flag and
  reads reference samples through a NULL pointer.

  The report identifies InterPrediction::xPredInterBlk() at
  CommonLib/InterPrediction.cpp:796; the supplied optimized ASan trace
  reaches the same prediction path at line 830 via an interpolation/copy
  operation. The observed fault is a read at address 0x20, and the crash is
  reported as deterministic.

Impact:
  Processing an attacker-controlled VVC bitstream can crash vvdecapp or an
  application using the VVdeC library, causing denial of service. The
  observed fault is a near-NULL read.

Reproduction:
  Build VVdeC with AddressSanitizer (VVDEC_USE_ADDRESS_SANITIZER=ON,
  VVDEC_FUZZING_BUILD=ON), then run with the linked sample:

    ./vvdecapp -b ./8_xPredInterBlk_CommonLib_InterPrediction_cpp_796 --y4m -o /dev/null -t 1 -v 0

ASan log excerpt (abbreviated):
  ==224669==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000020
  ==224669==The signal is caused by a READ memory access.
  ==224669==Hint: address points to the zero page.
    #0 in __asan_memcpy 
    #1 in void vvdec::copyBuffer_SSE< CommonLib/x86/avx2/../BufferX86.h:596:5
    #2 in vvdec::InterpolationFilter::filterHor CommonLib/InterpolationFilter.cpp:1062:7

Fix:
  Apply the upstream fix below. Version 3.2.1 is still affected according to
  the published CVE record.

    https://github.com/fraunhoferhhi/vvdec/commit/fb73aca37b48f89814f57edbc8072a37d47bbe06

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/vvdec/vvdecapp/8/8_xPredInterBlk_CommonLib_InterPrediction_cpp_796

References:
  https://github.com/fraunhoferhhi/vvdec/issues/420
  https://github.com/fraunhoferhhi/vvdec/commit/fb73aca37b48f89814f57edbc8072a37d47bbe06
  https://www.vulncheck.com/advisories/fraunhofer-hhi-vvdec-through-3.2.1-null-pointer-dereference-via-interprediction-xpredinterblk
  https://www.cve.org/CVERecord?id=CVE-2026-124311
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/124xxx/CVE-2026-124311.json


——
Best regards, Alexander A. Shvedov
@sigdevel
