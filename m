X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/15
Message-ID: <trinity-c29842e2-8028-4736-957c-f25a2e0c83ba-1794992739048@trinity-msg-rest-gmx-gmx-live-6b6d8476df-9vx2l>
Date: Wed, 18 Nov 2026 09:05:39 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-130633: GPAC/MP4Box: Heap Use-After-Free in gf_props_del_property via PID Property Arguments
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  GPAC < 26.02.0
           Reproduced on 2.5-DEV-rev2190-g106f08dce-master
           Commit 106f08dce61f3f48a784345797325f36082191fb
Fixed:     d65d699012bd82a0839e8af6747bca438e26938a
CVE:       CVE-2026-130633
CWE:       CWE-416 (Use After Free)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  A crafted filelist input triggers malformed PID property argument handling
  in gf_filter_pid_set_args_internal(). The parsed property value is
  released by gf_props_reset_single(), but a stale reference survives. Later
  property replacement reaches gf_props_del_property() at
  filter_core/filter_props.c:1022 and reads the freed allocation.

Impact:
  Processing attacker-controlled input can terminate MP4Box and cause denial
  of service. Arbitrary code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -add 72_gf_props_del_property -new /dev/null

ASan log excerpt:
  ==3491983==ERROR: AddressSanitizer: heap-use-after-free on address 0x502000002150 at pc 0x7f399c0d3190 bp 0x7fffa01e6040 sp 0x7fffa01e6038
  READ of size 8 at 0x502000002150 thread T0
      #0 0x7f399c0d318f in gf_props_del_property filter_core/filter_props.c:1022
      #1 0x7f399c0dac96 in gf_props_set_property filter_core/filter_props.c:1277
      #2 0x7f399c0a5bd2 in gf_filter_pid_set_args_internal filter_core/filter_pid.c:4524
      #3 0x7f399c0a6cec in gf_filter_pid_set_args filter_core/filter_pid.c:4574
      #4 0x7f399c07997c in gf_filter_pck_send_internal filter_core/filter_pck.c:944

Fix:
  Update to GPAC v26.02.0 or a later release containing the fix:

    https://github.com/gpac/gpac/releases/tag/v26.02.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/72/72_gf_props_del_property

References:
  https://github.com/gpac/gpac/issues/3441
  https://github.com/gpac/gpac/commit/d65d699012bd82a0839e8af6747bca438e26938a
  https://www.cve.org/CVERecord?id=CVE-2026-130633
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/130xxx/CVE-2026-130633.json
  https://www.vulncheck.com/advisories/gpac-before-26.02.0-use-after-free-via-pid-property-arguments


——
Best regards, Alexander A. Shvedov
@sigdevel
