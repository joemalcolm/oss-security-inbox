X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/29
Message-ID: <trinity-f0c764a0-155b-4f5a-9f35-66355719ae9b-1794429648968@trinity-msg-rest-gmx-gmx-live-6b6d8476df-5b7ht>
Date: Wed, 11 Nov 2026 20:40:49 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124308: VVdeC/vvdecapp: Heap Use-After-Free in DecLibRecon::createSubPicRefBufs during Subpicture Reconstruction
Content-Type: text/plain; charset=utf-8

Product:   VVdeC (vvdecapp)
Affected:  Versions before 3.2.1
           Reproduced build: 3.3.0-dev
           Commit e493ce51f13a2dea72cd58354652ed4e0f509a0e
Fixed:     8a0def8ba6050412d33e69a6f1e66e287b039083
CVE:       CVE-2026-124308
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  5.8 MEDIUM (AV:L/AC:H/PR:N/UI:R/S:U/C:L/I:L/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  Subpicture border-extension tasks retain raw pointers into the
  m_subPicExtTasks vector. DecLibRecon::decompressPicture() clears or
  reallocates this vector without ensuring that pending worker tasks have
  finished. A worker can then dereference a stale SubPicExtTask pointer in
  DecLibRecon::createSubPicRefBufs() at DecoderLib/DecLibRecon.cpp:409. The
  supplied ASan report shows an eight-byte read from a freed 28672-byte
  allocation.

  A crafted multi-subpicture VVC bitstream triggers this timing-dependent
  failure. Local bug 11 (upstream issue #403) reports a continuation after
  the initial PR #393 change; both reports are covered by the same CVE.

Impact:
  Processing an attacker-controlled VVC bitstream can crash vvdecapp or an
  application using the VVdeC library, causing denial of service. The use-
  after-free is a memory-safety violation; arbitrary code execution was not
  demonstrated in the supplied evidence.

Reproduction:
  Build VVdeC with AddressSanitizer (VVDEC_USE_ADDRESS_SANITIZER=ON,
  VVDEC_FUZZING_BUILD=ON), then run with the linked sample:

    ./vvdecapp -b ./3_createSubPicRefBufs_DecoderLib_DecLibRecon_cpp_409 -t 3

ASan log excerpt (abbreviated):
  ==544885==ERROR: AddressSanitizer: heap-use-after-free on address 0x7e97f6de02a8
  READ of size 8 at 0x7e97f6de02a8 thread T1
    #0 in vvdec::DecLibRecon::createSubPicRefBufs DecoderLib/DecLibRecon.cpp:409:10
    #1 in vvdec::DecLibRecon::createSubPicRefBufs DecoderLib/DecLibRecon.cpp:406:24

Fix:
  Update to VVdeC 3.2.1 or apply the upstream fix referenced below. For the
  subpicture task lifetime issue, use the final task-ownership fix rather
  than relying on the initial PR #393 change.

    https://github.com/fraunhoferhhi/vvdec/releases/tag/v3.2.1

    https://github.com/fraunhoferhhi/vvdec/commit/8a0def8ba6050412d33e69a6f1e66e287b039083

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/vvdec/vvdecapp/3/3_createSubPicRefBufs_DecoderLib_DecLibRecon_cpp_409

References:
  https://github.com/fraunhoferhhi/vvdec/issues/403
  https://github.com/fraunhoferhhi/vvdec/issues/392
  https://github.com/fraunhoferhhi/vvdec/commit/8a0def8ba6050412d33e69a6f1e66e287b039083
  https://www.vulncheck.com/advisories/fraunhofer-hhi-vvdec-before-3.2.1-use-after-free-via-declibrecon-createsubpicrefbufs
  https://www.cve.org/CVERecord?id=CVE-2026-124308
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/124xxx/CVE-2026-124308.json


——
Best regards, Alexander A. Shvedov
@sigdevel
