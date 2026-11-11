X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/24
Message-ID: <trinity-939f3499-95ef-4d51-be2c-2edf985325bb-1794415731446@trinity-msg-rest-gmx-gmx-live-868fdc48d9-hmfvg>
Date: Wed, 11 Nov 2026 16:48:51 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124310: VVdeC/vvdecapp: Out-of-Bounds Read in Slice::getRefPic via Overlapping Slice CTU Coverage
Content-Type: text/plain; charset=utf-8

Product:   VVdeC (vvdecapp)
Affected:  Versions before 3.2.1
           Reproduced build: 3.3.0-dev
           Commit e2a596a6524b84d89233d2644896c4d4086ee78f
Fixed:     32b842c10bf024f09bc7cf1445fa6f8a987422ca
CVE:       CVE-2026-124310
CWE:       CWE-129 (Improper Validation of Array Index)
CVSS 3.1:  6.1 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  A crafted VVC bitstream can code a CTU in overlapping slices. The later
  parse overwrites shared motion information, leaving a BDOF coding unit
  with a negative reference index. InterPrediction::xSubPuBio() proceeds to
  xPredInterUni(), which calls Slice::getRefPic() with index -1.

  The access falls outside m_apcRefPicList[e], a 17-element picture pointer
  array, at CommonLib/Slice.h:2647. The returned invalid Picture pointer is
  dereferenced in Picture::isRefScaled() at CommonLib/Picture.h:267. UBSan
  reports index -1 out of bounds, followed by an ASan read fault.

Impact:
  Processing an attacker-controlled VVC bitstream can crash vvdecapp or an
  application using the VVdeC library, causing denial of service. The
  observed fault is an out-of-bounds read. The supplied evidence does not
  demonstrate extraction of memory contents or arbitrary code execution.

Reproduction:
  Build VVdeC with AddressSanitizer (VVDEC_USE_ADDRESS_SANITIZER=ON,
  VVDEC_FUZZING_BUILD=ON), then run with the linked sample:

    ./vvdecapp -b ./10_isRefScaled_CommonLib_Picture_h_267 -t 1

ASan log excerpt (abbreviated):
  ==715675==ERROR: AddressSanitizer: SEGV on unknown address
  ==715675==The signal is caused by a READ memory access.
    #0 in vvdec::Picture::isRefScaled CommonLib/Picture.h:267:28
    #1 in vvdec::InterPrediction::xPredInterUni CommonLib/InterPrediction.cpp:631:46
    #2 in vvdec::InterPrediction::xSubPuBio CommonLib/InterPrediction.cpp:614:7

Fix:
  Update to VVdeC 3.2.1 or apply the upstream fix referenced below.

    https://github.com/fraunhoferhhi/vvdec/releases/tag/v3.2.1

    https://github.com/fraunhoferhhi/vvdec/commit/6e4b907ef5ab9db390b1293ba1ad5d7dd0a67e3f

    https://github.com/fraunhoferhhi/vvdec/commit/32b842c10bf024f09bc7cf1445fa6f8a987422ca

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/vvdec/vvdecapp/10/10_isRefScaled_CommonLib_Picture_h_267

References:
  https://github.com/fraunhoferhhi/vvdec/issues/402
  https://github.com/fraunhoferhhi/vvdec/commit/6e4b907ef5ab9db390b1293ba1ad5d7dd0a67e3f
  https://github.com/fraunhoferhhi/vvdec/commit/32b842c10bf024f09bc7cf1445fa6f8a987422ca
  https://www.vulncheck.com/advisories/fraunhofer-hhi-vvdec-before-3.2.1-out-of-bounds-read-via-slice-getrefpic
  https://www.cve.org/CVERecord?id=CVE-2026-124310
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/124xxx/CVE-2026-124310.json


——
Best regards, Alexander A. Shvedov
@sigdevel
