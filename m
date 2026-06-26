X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/26/4
Message-ID: <trinity-7e8b81f6-2398-4093-a84a-d9cfea327331-1782453730983@trinity-msg-rest-gmx-gmx-live-7bdfdcd756-rsstd>
Date: Fri, 26 Jun 2026 06:02:11 +0000
From: "Alexander A. Shvedov" <shvedov@....fr>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60464: NULL Pointer Dereference in GPAC/MP4Box via gf_sei_load_from_state_internal on crafted MPEG-2 TS file
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit 62714f27c64a3d1eb7e880f9eed2d38673cb43ce
CVE:       CVE-2025-60464
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The gf_sei_load_from_state_internal() function in GPAC's SEI loader
  (filters/sei_load.c:225) processes Supplemental Enhancement Information
  payloads embedded in HEVC and VVC bitstreams transported over MPEG-2 TS.
  When MP4Box inspects a crafted TS file containing HEVC/VVC streams with
  malformed NAL units and corrupted PMT descriptors, the NALU demuxer
  naludmx_configure_pid() frees the codec state buffer at
  filters/reframe_nalu.c:370 during PID reconfiguration.

  The function subsequently reads 1 byte from the freed 529,176-byte codec
  state region at address 0x7f7518dceb04 (529,156 bytes inside the freed
  allocation) without validating whether the buffer has been released,
  resulting in a heap-use-after-free and process crash (Denial of Service).

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: --static-build --static-bin --static-modules --enable-debug --extra-cflags="-g -O0" ;
  -Command: ./MP4Box -info 32_filters_sei_load_c_225_in_gf_sei_load_from_state_internal

Asan-log:
==33468==ERROR: AddressSanitizer: heap-use-after-free on address 0x7f7518dceb04 at pc 0x7f751b19dbf5 bp 0x7ffc77f69500 sp 0x7ffc77f694f8
READ of size 1 at 0x7f7518dceb04 thread T0
    #0 0x7f751b19dbf4 in gf_sei_load_from_state_internal filters/sei_load.c:225
    #1 0x7f751b19dbf4 in gf_sei_load_from_state filters/sei_load.c:265
    #2 0x7f751b0ffd02 in naludmx_finalize_au_flags filters/reframe_nalu.c:2360

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/32/32_filters_sei_load_c_225_in_gf_sei_load_from_state_internal

References:
  https://github.com/gpac/gpac/issues/3278
  https://www.cve.org/CVERecord?id=CVE-2025-60464
  https://infosec.exchange/@sigdevel/116778370895014131


——
Best regards, Alexander A. Shvedov
@sigdevel
