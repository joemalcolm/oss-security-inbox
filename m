X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/29/3
Message-ID: <trinity-2add23bc-dcd2-4075-be49-d0acac896649-1793291602114@trinity-msg-rest-gmx-gmx-live-5bfddcf4fc-j28kn>
Date: Thu, 29 Oct 2026 16:33:22 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60482: GPAC/MP4Box: Heap Use-After-Free in AC-4 Descriptor Cleanup
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1593-gfe88c3545-master (confirmed)
           Commit fe88c3545aadd597b250ccf23271d5d3de50ccc8
Fixed:     e02d1fd24cdc26acb1b236ab38b3832cffcae21b (upstream commit)
CVE:       CVE-2025-60482
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H;
           CISA ADP assessment in the CVE record)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  Importing a crafted AC-4 file with MP4Box triggers a heap use-after-free
  during AC-4 descriptor cleanup in gf_odf_ac4_cfg_clean_list() in
  src/odf/descriptors.c.

  The cleanup path passes an already freed list object to gf_list_count()
  in src/utils/list.c. AddressSanitizer reports a four-byte read from freed
  heap memory. The object was allocated by gf_list_new() and freed earlier
  in the AC-4 cleanup path.

Impact:
  An attacker who supplies a crafted AC-4 file for processing can cause
  MP4Box to crash, resulting in denial of service.

Reproduction:
  Using an AddressSanitizer build of the affected revision, run:

    ./MP4Box -add 46_gf_odf_ac4_cfg_clean_list_odf_descriptors_c_2411 -new /dev/null

ASan excerpt:
  ERROR: AddressSanitizer: heap-use-after-free
  READ of size 4
      #0 in gf_list_count utils/list.c:664
      #1 in gf_odf_ac4_cfg_clean_list odf/descriptors.c:2411
      #2 in gf_odf_ac4_cfg_clean_list odf/descriptors.c:2400
      #3 in dac4_box_del isomedia/box_code_base.c:9218

  Freed in:
      gf_odf_ac4_cfg_clean_list odf/descriptors.c:2438
  Allocated in:
      gf_list_new utils/list.c:612

Fix:
  https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/46/46_gf_odf_ac4_cfg_clean_list_odf_descriptors_c_2411

References:
  https://www.cve.org/CVERecord?id=CVE-2025-60482
  https://github.com/gpac/gpac/issues/3297
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60482.json
  https://infosec.exchange/@sigdevel/117456522954593448


——
Best regards, Alexander A. Shvedov
@sigdevel
