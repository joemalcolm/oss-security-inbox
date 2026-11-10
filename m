X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/15
Message-ID: <trinity-b91679c7-d2cf-484a-ae57-f5e7675cd774-1794317626386@trinity-msg-rest-gmx-gmx-live-6b6d8476df-gl6d6>
Date: Tue, 10 Nov 2026 13:33:46 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124308: VVdeC/vvdecapp: Heap Use-After-Free in DecLibRecon::createSubPicRefBufs after Aborted Picture Decoding
Content-Type: text/plain; charset=utf-8

Product:   VVdeC (vvdecapp)
Affected:  Versions before 3.2.1
           Reproduced build: 3.3.0-dev
           Commit e2a596a6524b84d89233d2644896c4d4086ee78f
Fixed:     8a0def8ba6050412d33e69a6f1e66e287b039083
CVE:       CVE-2026-124308
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  5.8 MEDIUM (AV:L/AC:H/PR:N/UI:R/S:U/C:L/I:L/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  This report continues local bug 3 (upstream issue #392) after the initial
  PR #393 change. A crafted multi-subpicture VVC bitstream aborts picture
  decoding while border-extension tasks remain pending. Starting another
  picture can invalidate the task parameters retained by worker threads.

  The local description reports an intermittent createSubPicRefBufs() use-
  after-free, reproduced in 5 of 20 ASan runs with -t 1. The upstream fix in
  PR #404 attaches SubPicExtTask parameters to the Picture so that they
  remain alive after reconstruction finishes. Both reports are covered by
  CVE-2026-124308.

Impact:
  Processing an attacker-controlled VVC bitstream can crash vvdecapp or an
  application using the VVdeC library, causing denial of service. The use-
  after-free is a memory-safety violation; arbitrary code execution was not
  demonstrated in the supplied evidence.

Reproduction:
  Build VVdeC with AddressSanitizer (VVDEC_USE_ADDRESS_SANITIZER=ON,
  VVDEC_FUZZING_BUILD=ON), then run with the linked sample:

    ./vvdecapp -b ./11_createSubPicRefBufs_DecoderLib_DecLibRecon_cpp_409 -t 1

Evidence note:
  The supplied asan.log and Markdown stack trace show Picture::isRefScaled()
  at CommonLib/Picture.h:267, rather than createSubPicRefBufs(). They
  therefore do not corroborate the reported use-after-free read site. The
  description and CVE mapping above follow the local report and upstream
  issue/fix references; a matching ASan trace is needed before quoting a
  createSubPicRefBufs() crash for this sample.

Fix:
  Update to VVdeC 3.2.1 or apply the upstream fix referenced below. For the
  subpicture task lifetime issue, use the final task-ownership fix rather
  than relying on the initial PR #393 change.

    https://github.com/fraunhoferhhi/vvdec/releases/tag/v3.2.1

    https://github.com/fraunhoferhhi/vvdec/commit/8a0def8ba6050412d33e69a6f1e66e287b039083

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/vvdec/vvdecapp/11/11_createSubPicRefBufs_DecoderLib_DecLibRecon_cpp_409

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
