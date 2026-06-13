X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/6
Message-ID: <trinity-d7d11b63-fd23-46d4-be0a-e40158217c72-1781381830464@trinity-msg-rest-gmx-gmx-live-6759fbb69b-mqbhf>
Date: Sat, 13 Jun 2026 20:17:10 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55645: Heap-based Buffer Overflow in GPAC/MP4Box via gf_cenc_set_pssh on crafted MP4 with oversized PSSH payload
Content-Type: text/plain; charset=utf-8


Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (e95f3064d846e4606276fff111e0f97df1576a04)
CVE:       CVE-2025-55645
CWE:       CWE-120 (Buffer Copy without Checking Size of Input)
CVSS 3.1:  5.4 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box processes a crafted MP4 file containing malformed
  Protection System Specific Header (PSSH) data, gf_cenc_set_pssh() in
  isomedia/drm_sample.c does not sufficiently validate the declared
  PSSH payload size before copying it into a fixed-size heap buffer.

  AddressSanitizer reports a heap-buffer-overflow READ of size
  2097152016 at memcpy(), 0 bytes after a 512-byte heap region allocated
  by gf_bs_new(), at isomedia/drm_sample.c:982, reached via
  mp4_mux_cenc_insert_pssh() while MP4Box performs DASH/CENC processing
  on the crafted file. The oversized read may also disclose adjacent
  heap memory.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -dash 10000 ./16_poc.mp4

Asan-log:
==3761620==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x515000019500 at pc 0x7fd5d4ef2956 bp 0x7ffcfa1a9150 sp 0x7ffcfa1a8910
READ of size 2097152016 at 0x515000019500 thread T0
    #0 0x7fd5d4ef2955 in memcpy ../../../../src/libsanitizer/sanitizer_common/sanitizer_common_interceptors_memintrinsics.inc:115
    #1 0x55bf75d4dedb in gf_cenc_set_pssh isomedia/drm_sample.c:982
    #2 0x55bf765e47b9 in mp4_mux_cenc_insert_pssh filters/mux_isom.c:4338

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/16/16_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3236
  https://www.cve.org/CVERecord?id=CVE-2025-55645
  https://infosec.exchange/@sigdevel/116736802253007654


——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

