X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/13/3
Message-ID: <trinity-2f274b3f-047b-4a88-b888-07a69be035b6-1794580313258@trinity-msg-rest-gmx-gmx-live-6b6d8476df-5sw62>
Date: Fri, 13 Nov 2026 14:31:53 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-128239: GPAC/MP4Box: NULL Pointer Dereference in MPEG-4 Form Handlers via Crafted XMT Input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  Through 26.07.0 (per the published CVE record)
           Reproduced on 26.08-DEV-rev263-g3f056542b-master
           Commit 3f056542b377cc73677d19490bfe1b46c52c9be7
Fixed:     bc416b997622e43de65afab3bae9b7d05d72f2b0
CVE:       CVE-2026-128239
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  During chapter import from a crafted XMT scene, the MPEG-4 compositor
  processes a Form node whose layout constraints reference an uninitialised
  group. The ab_apply() handler for the AB (Align Bottom) constraint uses
  the result of form_get_group() without checking for NULL before accessing
  the group bounds. This causes a NULL pointer dereference at
  compositor/mpeg4_form.c:627 and terminates MP4Box with SIGSEGV.

  The same missing validation affects the ar_apply(), sh_apply(),
  al_apply(), and at_apply() spatial-constraint handlers. The accepted patch
  adds checks for missing groups before their bounds are accessed.

  The issue was reproduced in GPAC version
  26.08-DEV-rev263-g3f056542b-master at commit
  3f056542b377cc73677d19490bfe1b46c52c9be7.

Impact:
  Importing attacker-controlled XMT input can crash MP4Box and cause denial
  of service. Arbitrary code execution was not demonstrated in the supplied
  report.

Reproduction:
  The supplied report used a static debug build on Kali GNU/Linux, kernel
  7.1.5+kali-amd64, x86_64, built with GCC 15.3.0-2. Run:

    ./MP4Box -chap ./221_ab_apply_compositor_mpeg4_form_c_627.xmt /tmp/1 -out /dev/null

GDB log excerpt:
  Program received signal SIGSEGV, Segmentation fault.
  #0  ab_apply (st=0x197c230, space=-1, group_idx=group_idx@...ry=0x7fffffffb780, count=count@...ry=2) at compositor/mpeg4_form.c:627
  #1  0x00000000010f9e16 in form_apply (st=0x197c230, constraint=0x1985000 "AB", group_idx=0x7fffffffb780, count=2) at compositor/mpeg4_form.c:180
  #2  TraverseForm (n=0x1984f30, rs=0x19ceb00, is_destroy=<optimized out>) at compositor/mpeg4_form.c:309

Fix:
  Use a GPAC build containing the following merged fix, or apply the patch.
  It adds NULL checks around form_get_group() results in the affected Form
  constraint handlers.

    https://github.com/gpac/gpac/commit/bc416b997622e43de65afab3bae9b7d05d72f2b0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/221/221_ab_apply_compositor_mpeg4_form_c_627.xmt

References:
  https://github.com/gpac/gpac/issues/4029
  https://github.com/gpac/gpac/pull/4039
  https://github.com/gpac/gpac/commit/bc416b997622e43de65afab3bae9b7d05d72f2b0
  https://www.cve.org/CVERecord?id=CVE-2026-128239
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/128xxx/CVE-2026-128239.json
  https://www.vulncheck.com/advisories/gpac-through-26.07.0-null-pointer-dereference-via-mpeg-4-form-handlers


——
Best regards, Alexander A. Shvedov
@sigdevel
