X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/9
Message-ID: <trinity-f00d5db3-258b-49e1-a974-4eb29c375120-1792493991748@trinity-msg-rest-gmx-gmx-live-674956c65c-gswkz>
Date: Tue, 20 Oct 2026 10:59:51 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60480: Heap buffer overflow in GPAC/MP4Box gf_odf_ac4_cfg_alternative_info via crafted AC-4 file
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1593-gfe88c3545-master
           Commit fe88c3545aadd597b250ccf23271d5d3de50ccc8
Fixed:     e02d1fd24cdc26acb1b236ab38b3832cffcae21b
CVE:       CVE-2025-60480
CWE:       CWE-122 (Heap-based Buffer Overflow)
CVSS 3.1:  6.5 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H; BDU assessment)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box performs an out-of-bounds heap read when parsing a crafted AC-4
  audio stream. gf_odf_ac4_cfg_alternative_info() in odf/descriptors.c
  accesses AC-4 alt_group_id data without sufficient bounds checking.

  The malformed stream is parsed by gf_ac4_raw_frame() and later reaches
  AC-4 descriptor generation through ac4dmx_check_pid(). AddressSanitizer
  reports a read of size 1 at odf/descriptors.c:1899, immediately after a
  784-byte heap allocation created during raw AC-4 frame parsing.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1593-gfe88c3545-master at commit
  fe88c3545aadd597b250ccf23271d5d3de50ccc8. GPAC closed the report with
  commit e02d1fd24cdc26acb1b236ab38b3832cffcae21b, which fixes several
  AC-4 fuzzing issues including this report.

Impact:
  A crafted AC-4 file processed by MP4Box can cause an application crash
  and denial of service. The supplied AddressSanitizer trace demonstrates
  an out-of-bounds read; arbitrary code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -info 44_gf_odf_ac4_cfg_alternative_info_odf_descriptors_c_1899

  The reporter used the following debug build options:

    --static-build --static-bin --static-modules --enable-debug --extra-cflags="-g -O0"

ASan log excerpt:
  ==1847116==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x518000000f90
  READ of size 1 at 0x518000000f90 thread T0
      #0 0x7f556dea1063 in gf_odf_ac4_cfg_alternative_info odf/descriptors.c:1899
      #1 0x7f556dea43fa in gf_odf_ac4_cfg_presentation_v1_dsi odf/descriptors.c:2103
      #2 0x7f556dea5b2c in gf_odf_ac4_cfg_dsi_v1 odf/descriptors.c:2233
      #3 0x7f556dea6ae1 in gf_odf_ac4_cfg_write_bs odf/descriptors.c:2281
      #4 0x7f556dea6ae1 in gf_odf_ac4_cfg_write odf/descriptors.c:2288
      #5 0x7f556e8d1cb7 in ac4dmx_check_pid filters/reframe_ac4.c:238
      #6 0x7f556e8d2b09 in ac4dmx_process filters/reframe_ac4.c:403
      #7 0x7f556e5083c1 in gf_filter_process_task filter_core/filter.c:3187

  0x518000000f90 is located 0 bytes after 784-byte region
  [0x518000000c80,0x518000000f90)
  allocated by thread T0 here:
      #0 0x7f556f4f4c77 in malloc asan_malloc_linux.cpp:69
      #1 0x7f556df93069 in gf_ac4_raw_frame media_tools/av_parsers.c:15916
      #2 0x7f556df93069 in gf_ac4_parser_bs media_tools/av_parsers.c:16113

  SUMMARY: AddressSanitizer: heap-buffer-overflow
    odf/descriptors.c:1899 in gf_odf_ac4_cfg_alternative_info

Fix:
  Update to a GPAC revision containing commit:

    e02d1fd24cdc26acb1b236ab38b3832cffcae21b

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/44/44_gf_odf_ac4_cfg_alternative_info_odf_descriptors_c_1899

References:
  https://github.com/gpac/gpac/issues/3295
  https://github.com/gpac/gpac/commit/e02d1fd24cdc26acb1b236ab38b3832cffcae21b
  https://www.cve.org/CVERecord?id=CVE-2025-60480
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60480.json
  https://infosec.exchange/@sigdevel/117456490628466269
  https://bdu.fstec.ru/vul/2025-08615


——
Best regards, Alexander A. Shvedov
@sigdevel
