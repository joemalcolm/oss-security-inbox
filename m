X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/23
Message-ID: <trinity-1b80ccae-40c7-4a7c-b28b-de1f5f3e8eed-1794415674602@trinity-msg-rest-gmx-gmx-live-868fdc48d9-qkvzs>
Date: Wed, 11 Nov 2026 16:47:54 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124312: VVdeC/vvdecapp: Heap Out-of-Bounds Read in CodingStructure::getColInfo with a Smaller Collocated Picture
Content-Type: text/plain; charset=utf-8

Product:   VVdeC (vvdecapp)
Affected:  Versions through 3.2.1
           Reproduced build: 3.3.0-dev
           Commit d3049dc6ddccfacca90d8451123549b49f3b0f56
Fixed:     0695c06221c27b3680fec9851ac2cf46b2195ea9
CVE:       CVE-2026-124312
CWE:       CWE-125 (Out-of-bounds Read)
CVSS 3.1:  4.7 MEDIUM (AV:L/AC:H/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  A crafted VVC bitstream uses a smaller reference picture as the collocated
  picture for temporal motion vector prediction. With error concealment
  enabled (-eh 1), the decoder can reach CodingStructure::getColInfo() using
  a position derived from the current picture's CTU layout, outside the
  motion-field allocation of the smaller collocated picture.

  At CommonLib/CodingStructure.cpp:458, ASan reports an eight-byte read 1128
  bytes past an 8520-byte heap allocation. The decoder crashes while
  deriving motion vectors.

Impact:
  Processing an attacker-controlled VVC bitstream can crash vvdecapp or an
  application using the VVdeC library, causing denial of service. The
  observed fault is an out-of-bounds read. The supplied evidence does not
  demonstrate extraction of memory contents or arbitrary code execution.

Reproduction:
  Build VVdeC with AddressSanitizer (VVDEC_USE_ADDRESS_SANITIZER=ON,
  VVDEC_FUZZING_BUILD=ON), then run with the linked sample:

    ./vvdecapp -b ./12_getColInfo_CommonLib_CodingStructure_cpp_458 --y4m -o /dev/null -t 1 -v 0 -eh 1

ASan log excerpt (abbreviated):
  ==790753==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x7e46a49f16b0
  READ of size 8 at 0x7e46a49f16b0 thread T1
    #0 in vvdec::CodingStructure::getColInfo CommonLib/CodingStructure.cpp:458:39
    #1 in vvdec::PU::getColocatedMVP CommonLib/UnitTools.cpp:1438:34
    #2 in vvdec::PU::getInterMergeCandidates CommonLib/UnitTools.cpp:1115:42

Fix:
  Apply the upstream fix below. Version 3.2.1 is still affected according to
  the published CVE record.

    https://github.com/fraunhoferhhi/vvdec/commit/0695c06221c27b3680fec9851ac2cf46b2195ea9

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/vvdec/vvdecapp/12/12_getColInfo_CommonLib_CodingStructure_cpp_458

References:
  https://github.com/fraunhoferhhi/vvdec/issues/422
  https://github.com/fraunhoferhhi/vvdec/commit/0695c06221c27b3680fec9851ac2cf46b2195ea9
  https://www.vulncheck.com/advisories/fraunhofer-hhi-vvdec-through-3.2.1-heap-out-of-bounds-read-via-codingstructure-getcolinfo
  https://www.cve.org/CVERecord?id=CVE-2026-124312
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/124xxx/CVE-2026-124312.json


——
Best regards, Alexander A. Shvedov
@sigdevel
