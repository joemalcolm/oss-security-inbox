X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/23
Message-ID: <trinity-2b4f14e6-32f5-40eb-877e-bf126776cd6c-1792669900014@trinity-msg-rest-gmx-gmx-live-674956c65c-fr7fh>
Date: Thu, 22 Oct 2026 11:51:40 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60478: Heap use-after-free in GPAC/MP4Box packet destruction via crafted MPEG-2 TS file
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  2.5-DEV-rev1617-g856674b22-master
           Commit 856674b226d6cbe28a941ad223be38194cbf7d37
Fixed:     c592a144bbe339ee581ca88aaa3247362795b742
CVE:       CVE-2025-60478
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  7.8 HIGH (AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H; BDU assessment)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  MP4Box contains a heap use-after-free in gf_filter_packet_destroy() at
  filter_core/filter_pck.c:678. A crafted MPEG-2 TS file with malformed
  PMT/PAT data and empty DASH segment state causes GPAC to mishandle packet
  ownership. The output and PID packet-drop paths later write to a packet
  object that has already been freed.

  The issue was reproduced in GPAC version
  2.5-DEV-rev1617-g856674b22-master at commit
  856674b226d6cbe28a941ad223be38194cbf7d37.

Impact:
  Processing the crafted transport stream during DASH segmentation can
  crash MP4Box and cause denial of service. The four-byte write to freed
  heap memory also presents memory-corruption and potential code-execution
  risk.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -dash 100 47_gf_filter_packet_destroy_filter_core_filter_pck_c_678

ASan log excerpt:
  ==53942==ERROR: AddressSanitizer: heap-use-after-free on address 0x513000001054
  WRITE of size 4 at 0x513000001054 thread T0
      #0 in gf_filter_packet_destroy filter_core/filter_pck.c:678
      #1 in gf_filter_packet_destroy filter_core/filter_pck.c:684
      #2 in gf_filter_pid_drop_packet filter_core/filter_pid.c:7270
      #3 in fileout_process filters/out_file.c:933
      #4 in gf_filter_process_task filter_core/filter.c:3201

  SUMMARY: AddressSanitizer: heap-use-after-free
    filter_core/filter_pck.c:678 in gf_filter_packet_destroy

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/47/47_gf_filter_packet_destroy_filter_core_filter_pck_c_678

References:
  https://github.com/gpac/gpac/issues/3300
  https://github.com/gpac/gpac/commit/c592a144bbe339ee581ca88aaa3247362795b742
  https://www.cve.org/CVERecord?id=CVE-2025-60478
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2025/60xxx/CVE-2025-60478.json
  https://infosec.exchange/@sigdevel/117456560052551246
  https://bdu.fstec.ru/vul/2025-09883


——
Best regards, Alexander A. Shvedov
@sigdevel
