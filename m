X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/20/9
Message-ID: <trinity-b5eb9e94-0778-4fd2-b423-eee6990966fe-1795091705005@trinity-msg-rest-gmx-gmx-live-668fc4788c-mpsjz>
Date: Thu, 19 Nov 2026 12:35:05 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-130793: GPAC/MP4Box: Stack Buffer Overflow in gf_filter_pid_resolve_file_template_ex via Crafted NHML Input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  GPAC < 26.07.0
           Reproduced on 26.03-DEV-rev309-g6aef013b4-master
           Commit 6aef013b43d25a05730aac3fff04248e54f65aac
Fixed:     5439b94d091e764742a6b108509516d3810bd034
CVE:       CVE-2026-130793
CWE:       CWE-121 (Stack-based Buffer Overflow)
CVSS 3.1:  6.6 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:L/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  A crafted NHML file references an excessively long media filename. When
  DASH segmentation constructs an output filename,
  gf_filter_pid_resolve_file_template_ex() expands this name beyond a fixed
  GF_MAX_PATH stack buffer. The supplied ASan trace identifies a one-byte
  write past szDASHTemplate at filter_core/filter_pid.c:9366, reached from
  dasher_setup_sources().

Impact:
  Processing attacker-controlled input can terminate MP4Box and cause denial
  of service. The issue also affects memory safety; arbitrary code execution
  was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -dash 1000 78_filter_core_filter_pid_c_9366_gf_filter_pid_resolve_file_template_ex

ASan log excerpt:
  ==384758==ERROR: AddressSanitizer: stack-buffer-overflow on address 0x7b69d35f93a0 at pc 0x7f69d66f12d3 bp 0x7ffd25eb9660 sp 0x7ffd25eb9658
  WRITE of size 1 at 0x7b69d35f93a0 thread T0
      #0 0x7f69d66f12d2 in gf_filter_pid_resolve_file_template_ex filter_core/filter_pid.c:9366
      #1 0x7f69d67bd2fd in dasher_setup_sources filters/dasher.c:4524
      #2 0x7f69d67cb6d1 in dasher_setup_period filters/dasher.c:8018

Fix:
  Update to GPAC v26.07.0 or a later release containing the fix:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/78/78_filter_core_filter_pid_c_9366_gf_filter_pid_resolve_file_template_ex

References:
  https://github.com/gpac/gpac/issues/3586
  https://github.com/gpac/gpac/commit/5439b94d091e764742a6b108509516d3810bd034
  https://www.cve.org/CVERecord?id=CVE-2026-130793
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/130xxx/CVE-2026-130793.json
  https://www.vulncheck.com/advisories/gpac-before-26.07.0-stack-based-buffer-overflow-via-gf-filter-pid-resolve-file-template-ex


——
Best regards, Alexander A. Shvedov
@sigdevel
