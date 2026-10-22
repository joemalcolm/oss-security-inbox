X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/22
Message-ID: <trinity-03bf38cb-230e-4bb6-a388-fe3d5ef75875-1792669440377@trinity-msg-rest-gmx-gmx-live-674956c65c-ksjgx>
Date: Thu, 22 Oct 2026 11:44:00 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60476: Heap use-after-free in GPAC/MP4Box AC-4 descriptor cleanup
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1593-gfe88c3545-master
           Commit fe88c3545aadd597b250ccf23271d5d3de50ccc8
Fixed:     e02d1fd24cdc26acb1b236ab38b3832cffcae21b
CVE:       CVE-2025-60476
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  8.8 HIGH (AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H; BDU assessment)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box contains a heap use-after-free in
  gf_odf_ac4_cfg_clean_list() in odf/descriptors.c. When a crafted AC-4
  stream with malformed configuration list data is parsed, recursive
  cleanup frees a list node in a deeper invocation. The caller later reads
  the same node at odf/descriptors.c:2419.

  AddressSanitizer reports an eight-byte read 80 bytes into an 88-byte
  heap region after that region was freed by the same cleanup routine.
  The issue was reproduced in GPAC version
  2.5-DEV-rev1593-gfe88c3545-master at commit
  fe88c3545aadd597b250ccf23271d5d3de50ccc8.

Impact:
  Processing the crafted file can crash MP4Box and cause denial of
  service. Because the fault is a heap use-after-free, the CVE and BDU
  records also identify a potential arbitrary-code-execution impact.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -info 42_gf_odf_ac4_cfg_clean_list_odf_descriptors_c_2419

ASan log excerpt:
  ==1841011==ERROR: AddressSanitizer: heap-use-after-free on address 0x508000000470
  READ of size 8 at 0x508000000470 thread T0
      #0 in gf_odf_ac4_cfg_clean_list odf/descriptors.c:2419
      #1 in gf_odf_ac4_cfg_clean_list odf/descriptors.c:2400
      #2 in gf_ac4_parser_bs media_tools/av_parsers.c:16101
      #3 in ac4dmx_process filters/reframe_ac4.c:388

  0x508000000470 is located 80 bytes inside of 88-byte region
  [0x508000000420,0x508000000478)
  freed by thread T0 in gf_odf_ac4_cfg_clean_list at descriptors.c:2432.

  SUMMARY: AddressSanitizer: heap-use-after-free
    odf/descriptors.c:2419 in gf_odf_ac4_cfg_clean_list

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/42/42_gf_odf_ac4_cfg_clean_list_odf_descriptors_c_2419

References:
  https://github.com/gpac/gpac/issues/3293
  https://github.com/gpac/gpac/commit/e02d1fd24cdc26acb1b236ab38b3832cffcae21b
  https://www.cve.org/CVERecord?id=CVE-2025-60476
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60476.json
  https://infosec.exchange/@sigdevel/117456471347684902
  https://bdu.fstec.ru/vul/2025-08612


——
Best regards, Alexander A. Shvedov
@sigdevel
