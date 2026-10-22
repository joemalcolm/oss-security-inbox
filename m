X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/26
Message-ID: <trinity-9e3d066c-84f9-474a-8d80-58591135e5d9-1792669951394@trinity-msg-rest-gmx-gmx-live-674956c65c-w5lk9>
Date: Thu, 22 Oct 2026 11:52:31 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-71438: Out-of-bounds Read in GPAC/MP4Box via gf_odf_ac4_cfg_dsi_v1 on crafted AC-4 stream with invalid frame rate index
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (see References)
CVE:       CVE-2025-71438
CWE:       CWE-125 (Out-of-bounds Read)
CVSS 3.1:  5.4 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The gf_odf_ac4_cfg_dsi_v1 function in odf/descriptors.c uses a stream-supplied
  frame_rate_index to index into the fixed-size lookup tables AC4_SAMPLE_DELTA_TABLE_48
  and AC4_MEDIA_TIMESCALE_48. The function performs no bounds check before the
  table access at line 2179, allowing a crafted AC-4 file with an out-of-range
  index (e.g., 15) to read memory past the end of either table.

  The out-of-bounds read returns a NULL or garbage pointer that is subsequently
  dereferenced, causing a SEGV (READ at address 0x000000000000) and immediate
  process termination. No evidence of arbitrary code execution was observed;
  the impact is limited to Denial of Service.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: --static-build --static-bin --static-modules --enable-debug --extra-cflags="-g -O0" ;
  -Command: ./MP4Box -dash 100 50_gf_odf_ac4_cfg_dsi_v1_odf_descriptors_c_2179

Asan-log:
==56651==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7f09a1a8fd3c bp 0x000000000002 sp 0x7fffb433fb30 T0)
==56651==The signal is caused by a READ memory access.
    #0 0x7f09a1a8fd3c in gf_odf_ac4_cfg_dsi_v1 odf/descriptors.c:2179
    #1 0x7f09a1a909b5 in gf_odf_ac4_cfg_write_bs odf/descriptors.c:2299
    #2 0x7f09a1a909b5 in gf_odf_ac4_cfg_write odf/descriptors.c:2306

Fix:
  Update to a GPAC v26.07.0:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/50/50_gf_odf_ac4_cfg_dsi_v1_odf_descriptors_c_2179

References:
  https://github.com/gpac/gpac/issues/3303
  https://nvd.nist.gov/vuln/detail/CVE-2025-71438
  https://github.com/gpac/gpac/releases/tag/v26.07.0
  https://infosec.exchange/@sigdevel/117484156995584313
  https://github.com/gpac/gpac/commit/13eb5b76560aaf7813b865a2ad433258478e2695


——
Best regards, Alexander A. Shvedov
@sigdevel
