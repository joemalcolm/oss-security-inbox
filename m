X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/17/2
Message-ID: <trinity-e4b2fecb-0fb2-42e9-8f2f-f484bb9c3413-1792236461797@trinity-msg-rest-gmx-gmx-live-674956c65c-mjnfm>
Date: Sat, 17 Oct 2026 11:27:41 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55640: Heap Buffer Overflow in GPAC/MP4Box via stbl_AddSize on crafted MP4 with corrupted sample metadata
Content-Type: text/plain; charset=utf-8


Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (321624f28d19a413449fd1718d1eb59037f8f7fc)
CVE:       CVE-2025-55640
CWE:       CWE-122 (Heap-based Buffer Overflow)
CVSS 3.1:  8.8 HIGH (AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H)
Reporter:  @sigdevel (Alexander Shvedov) <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box imports a crafted MP4 file containing manipulated sample
  metadata (corrupted sample counts, invalid aspect ratios, and oversized
  box declarations), the stbl_AddSize() function in isomedia/stbl_write.c
  fails to validate sample count boundaries before writing to the sample
  size table (stsz box). The function writes beyond the allocated heap
  buffer for stbl->sampleSize->sizes, resulting in a heap-buffer-overflow.

  AddressSanitizer reports a WRITE of size 4 at isomedia/stbl_write.c:492
  immediately after a 64-byte heap allocation, reached via
  mp4_mux_process_sample() / gf_isom_add_sample() / trak_add_sample() /
  Media_AddSample() while MP4Box imports the crafted track.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -add 25_poc.mp4 -new /dev/null

Asan-log:
==459908==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x506000006480 at pc 0x7f708f8531f1 bp 0x7fff5014c390 sp 0x7fff5014c388
WRITE of size 4 at 0x506000006480 thread T0
    #0 0x7f708f8531f0 in stbl_AddSize isomedia/stbl_write.c:492
    #1 0x7f708f80cb60 in Media_AddSample isomedia/media.c:1033
    #2 0x7f708f7d12fb in trak_add_sample isomedia/isom_write.c:1048
    #3 0x7f708f7d1f33 in gf_isom_add_sample isomedia/isom_write.c:1120
    #4 0x7f70901cdf7f in mp4_mux_process_sample filters/mux_isom.c:5103
    #5 0x7f70901f7a09 in mp4_mux_process filters/mux_isom.c:7701
    #6 0x7f708feed9d1 in gf_filter_process_task filter_core/filter.c:3179
    #7 0x7f708fec0d25 in gf_fs_thread_proc filter_core/filter_session.c:2420
    #8 0x7f708fec5f84 in gf_fs_run filter_core/filter_session.c:2727
    #9 0x7f708f9a931d in gf_media_import media_tools/media_import.c:1601
    #10 0x55c0e9ef2be6 in import_file applications/mp4box/fileimport.c:1693

0x506000006480 is located 0 bytes after 64-byte region [0x506000006440,0x506000006480)
allocated by thread T0 here:
    #0 0x7f7090ef4c77 in malloc ../../../../src/libsanitizer/asan/asan_malloc_linux.cpp:69
    #1 0x7f708f85a080 in stbl_SampleSizeAppend isomedia/stbl_write.c:1678

SUMMARY: AddressSanitizer: heap-buffer-overflow isomedia/stbl_write.c:492 in stbl_AddSize

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/25/25_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3261
  https://www.cve.org/CVERecord?id=CVE-2025-55640
  https://infosec.exchange/@sigdevel/116769271709415444

——
Best regards, Alexander A. Shvedov
@sigdevel
