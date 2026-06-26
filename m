X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/26/2
Message-ID: <trinity-2a14b5b8-42bb-414a-9bf6-59be6574d95c-1782453402538@trinity-msg-rest-gmx-gmx-live-7bdfdcd756-9k6ns>
Date: Fri, 26 Jun 2026 05:56:42 +0000
From: "Alexander A. Shvedov" <shvedov@....fr>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55639: NULL Pointer Dereference in GPAC/MP4Box via gf_isom_add_track_kind on crafted MP4 file
Content-Type: text/plain; charset=utf-8


Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit 78c2c9be29a41b38eca2c53d280442088a71dab9
CVE:       CVE-2025-55639
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  The gf_isom_add_track_kind() function in GPAC's ISO media muxer
  (isomedia/isom_write.c:3153) appends a track "kind" metadata entry to an
  MP4 track during mux setup. When MP4Box imports a crafted MP4 file
  containing corrupted MPEG-2 TS PMT descriptors and an MPEG-H Audio track
  with missing or empty kind metadata, mp4_mux_set_udta() in
  filters/mux_isom.c:938 passes a NULL pointer as the kind argument to
  gf_isom_add_track_kind().

  The function does not validate the kind pointer before passing it to
  strdup(), which internally calls strlen() on address 0x0, triggering a
  segmentation fault and crashing the process (Denial of Service).

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: ./configure --enable-sanitizer && make ;
  -Command: ./MP4Box -add 23_poc.mp4 -new /dev/null

Asan-log:
==748312==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7f8d4d70efe6 bp 0x7ffc18a95310 sp 0x7ffc18a94ab8 T0)
==748312==The signal is caused by a READ memory access.
    #0 0x7f8d4d70efe6 in __sanitizer::internal_strlen(char const*) ../../../../src/libsanitizer/sanitizer_common/sanitizer_libc.cpp:176
    #1 0x7f8d4d6eeba9 in strdup ../../../../src/libsanitizer/asan/asan_interceptors.cpp:574
    #2 0x7f8d4bfffe94 in gf_isom_add_track_kind isomedia/isom_write.c:3153

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/23/23_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3260
  https://www.cve.org/CVERecord?id=CVE-2025-55639
  https://infosec.exchange/@sigdevel/116769184815236865

——
Best regards, Alexander A. Shvedov
@sigdevel
