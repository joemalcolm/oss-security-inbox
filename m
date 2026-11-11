X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/28
Message-ID: <trinity-7fa9a215-37ef-4425-bbf0-e3275131854b-1794429591983@trinity-msg-rest-gmx-gmx-live-868fdc48d9-dtx95>
Date: Wed, 11 Nov 2026 20:39:52 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124309: VVdeC/vvdecapp: Heap Out-of-Bounds Read in HRD::setBufferingPeriodSEI via Scalable-Nesting SEI
Content-Type: text/plain; charset=utf-8

Product:   VVdeC (vvdecapp)
Affected:  Versions before 3.2.1
           Reproduced build: 3.3.0-dev
           Commit e493ce51f13a2dea72cd58354652ed4e0f509a0e
Fixed:     1d657c7a822987d2ff935e9c227c5faf5318ca06
CVE:       CVE-2026-124309
CWE:       CWE-125 (Out-of-bounds Read)
CVSS 3.1:  6.1 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  While parsing a scalable-nesting SEI,
  SEIReader::xParseSEIScalableNesting() passes a vvdecSEI wrapper pointer to
  HRD::setBufferingPeriodSEI() instead of its buffering-period payload
  pointer. The structure assignment at CommonLib/Slice.h:644 copies a
  complete vvdecSEIBufferingPeriod from the 16-byte wrapper allocation.

  ASan reports a 3740-byte read past that allocation. A crafted nested
  buffering-period SEI triggers the oversized copy. The upstream fix removes
  the redundant setter call because xReadSEImessage() already updates the
  nested HRD state.

Impact:
  Processing an attacker-controlled VVC bitstream can crash vvdecapp or an
  application using the VVdeC library, causing denial of service. The
  observed fault is an out-of-bounds read. The supplied evidence does not
  demonstrate extraction of memory contents or arbitrary code execution.

Reproduction:
  Build VVdeC with AddressSanitizer (VVDEC_USE_ADDRESS_SANITIZER=ON,
  VVDEC_FUZZING_BUILD=ON), then run with the linked sample:

    ./vvdecapp -b ./9_setBufferingPeriodSEI_CommonLib_Slice_h_644

ASan log excerpt (abbreviated):
  ==635412==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x7ba5c8fe0f40
  READ of size 3740 at 0x7ba5c8fe0f40 thread T0
    #0 in __asan_memcpy 
    #1 in vvdec::HRD::setBufferingPeriodSEI CommonLib/Slice.h:644:115
    #2 in vvdec::SEIReader::xParseSEIScalableNesting DecoderLib/SEIread.cpp:590:19

Fix:
  Update to VVdeC 3.2.1 or apply the upstream fix referenced below.

    https://github.com/fraunhoferhhi/vvdec/releases/tag/v3.2.1

    https://github.com/fraunhoferhhi/vvdec/commit/1d657c7a822987d2ff935e9c227c5faf5318ca06

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/vvdec/vvdecapp/9/9_setBufferingPeriodSEI_CommonLib_Slice_h_644

References:
  https://github.com/fraunhoferhhi/vvdec/issues/397
  https://github.com/fraunhoferhhi/vvdec/commit/1d657c7a822987d2ff935e9c227c5faf5318ca06
  https://www.vulncheck.com/advisories/fraunhofer-hhi-vvdec-before-3.2.1-heap-out-of-bounds-read-via-seireader-xparseseiscalablenesting
  https://www.cve.org/CVERecord?id=CVE-2026-124309
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/124xxx/CVE-2026-124309.json


——
Best regards, Alexander A. Shvedov
@sigdevel
