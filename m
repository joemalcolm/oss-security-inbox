X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/20/7
Message-ID: <trinity-765d714d-553c-40fb-83fd-2ef872d95a84-1795091539273@trinity-msg-rest-gmx-gmx-live-668fc4788c-9mt4z>
Date: Thu, 19 Nov 2026 12:32:19 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-130632: GPAC/MP4Box: Out-of-Bounds Read in m2tsdmx_send_packet via Crafted MPEG-2 TS VC-1 Input
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  GPAC < 26.02.0
           Reproduced on 2.5-DEV-rev2190-g106f08dce-master
           Commit 106f08dce61f3f48a784345797325f36082191fb
Fixed:     d65d699012bd82a0839e8af6747bca438e26938a
CVE:       CVE-2026-130632
CWE:       CWE-125 (Out-of-bounds Read)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  The VC-1 packet path in m2tsdmx_send_packet() applies a start-code offset
  twice. A crafted MPEG-2 TS stream can therefore underflow the remaining
  payload length passed to memcpy(), causing an oversized read at
  filters/dmx_m2ts.c:936.

  The supplied ASan run labels the access heap-use-after-free and reports a
  read of 4294967202 bytes. The published CVE classifies the underlying
  packet-length error as an out-of-bounds read (CWE-125).

Impact:
  Processing attacker-controlled input can terminate MP4Box and cause denial
  of service. Arbitrary code execution was not demonstrated.

Reproduction:
  Build GPAC with AddressSanitizer, then run:

    ./MP4Box -add 74_m2tsdmx_send_packet -new /dev/null

ASan log excerpt:
  ==3492692==ERROR: AddressSanitizer: heap-use-after-free on address 0x50d0000002c5 at pc 0x7fa54c2f2936 bp 0x7ffd84102390 sp 0x7ffd84101b50
  READ of size 4294967202 at 0x50d0000002c5 thread T0
      #0 0x7fa54c2f2935 in memcpy ../../../../src/libsanitizer/sanitizer_common/sanitizer_common_interceptors_memintrinsics.inc:115
      #1 0x7fa54b466d58 in m2tsdmx_send_packet filters/dmx_m2ts.c:936
      #2 0x7fa54b466d58 in m2tsdmx_on_event filters/dmx_m2ts.c:1184
      #3 0x7fa54addc021 in gf_m2ts_reframe_default media_tools/mpegts.c:136
      #4 0x7fa54ade52c1 in gf_m2ts_flush_pes media_tools/mpegts.c:2311

Fix:
  Update to GPAC v26.02.0 or a later release containing the fix:

    https://github.com/gpac/gpac/releases/tag/v26.02.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/74/74_m2tsdmx_send_packet

References:
  https://github.com/gpac/gpac/issues/3442
  https://github.com/gpac/gpac/commit/d65d699012bd82a0839e8af6747bca438e26938a
  https://www.cve.org/CVERecord?id=CVE-2026-130632
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/130xxx/CVE-2026-130632.json
  https://www.vulncheck.com/advisories/gpac-before-26.02.0-out-of-bounds-read-via-m2tsdmx-send-packet


——
Best regards, Alexander A. Shvedov
@sigdevel
