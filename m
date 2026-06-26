X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/27/5
Message-ID: <trinity-4182490a-8046-4e07-9a4e-165f101e8ae7-1782504744560@trinity-msg-rest-gmx-gmx-live-7bdfdcd756-8x2qd>
Date: Fri, 26 Jun 2026 20:12:24 +0000
From: "Alexander A. Shvedov" <shvedov@....fr>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-60474: Heap-based Buffer Overflow in GPAC/MP4Box via gf_media_import on crafted MPEG-2 TS file
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (see References)
CVE:       CVE-2025-60474
CWE:       CWE-122 (Heap-based Buffer Overflow)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The gf_media_import() function in GPAC's media import layer
  (media_tools/media_import.c:1297) imports media tracks from input files
  into the filter processing pipeline. When MP4Box inspects a crafted
  MPEG-2 TS file, the function stores a property value that was produced
  by strdup(""), allocating a 1-byte heap buffer containing only the NUL
  terminator at address 0x502000003110.

  The function subsequently reads 1 byte at offset [1] of this buffer
  (past its only valid index [0]) at address 0x502000003111, triggering
  a heap-buffer-overflow read and crashing the process (Denial of Service).

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: --static-build --static-bin --static-modules --enable-debug --extra-cflags="-g -O0" ;
  -Command: ./MP4Box -info 38_gf_media_import_media_tools_media_import_c_1297

Asan-log:
==2016054==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x502000003111 at pc 0x7f11ecdaca1e bp 0x7fffd1145a00 sp 0x7fffd11459f8
READ of size 1 at 0x502000003111 thread T0
    #0 0x7f11ecdaca1d in gf_media_import media_tools/media_import.c:1297
    #1 0x558a953c08e3 in convert_file_info /media/user/8b16fbb8-17fc-4a2a-99f7-d4da627d0251/gpac_asan/applications/mp4box/fileimport.c:131
    #2 0x558a953914b7 in mp4box_main /media/user/8b16fbb8-17fc-4a2a-99f7-d4da627d0251/gpac_asan/applications/mp4box/mp4box.c:6520

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/38/38_gf_media_import_media_tools_media_import_c_1297

References:
  https://github.com/gpac/gpac/issues/3287
  https://www.cve.org/CVERecord?id=CVE-2025-60474
  https://infosec.exchange/@sigdevel/116780566799952592


——
Best regards, Alexander A. Shvedov
@sigdevel
