X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/18
Message-ID: <trinity-56a908b3-1c8f-44cd-94fd-e7ae93ca23c0-1781383293733@trinity-msg-rest-gmx-gmx-live-6759fbb69b-5d8w4>
Date: Sat, 13 Jun 2026 20:41:33 +0000
From: shvedov@....com
To: oss-security@...ts.openwall.com
Subject: CVE-2025-55651: NULL Pointer Dereference in GPAC/MP4Box via gf_isom_get_user_data_count on truncated MP4 input
Content-Type: text/plain; charset=utf-8


Product:   GPAC (MP4Box)
Affected:  gpac/gpac prior to fix commit (46be5f928660530d5332cd2f1d177208737558ef)
CVE:       CVE-2025-55651
CWE:       CWE-476 (NULL Pointer Dereference)
CVSS 3.1:  4.3 MEDIUM (AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:L)
Reporter:  sigdevel <https://infosec.exchange/@sigdevel>

Description:
  When MP4Box imports a truncated or malformed MP4 file, the isomedia
  channel-setup path can pass a NULL UUID pointer into
  gf_isom_get_user_data_count() in isomedia/isom_read.c. The function
  does not check the pointer for NULL before using it in a comparison
  against stored user-data UUIDs.

  AddressSanitizer reports a SEGV caused by a READ memory access at
  address 0x000000000000 (the zero page) at isomedia/isom_read.c:2754,
  reached via isor_setup_channel() while MP4Box declares tracks from
  the crafted file.

  Crash is reproducible on the current master branch at the time of
  discovery. No authentication or special privileges required beyond
  ability to provide a crafted file.

Reproduction:
  -Build-opts: CC="gcc -fsanitize=address -g" CXX="g++ -fsanitize=address -g" ;
  -Command: ./MP4Box -add 4_poc.mp4 -new /dev/null -split-size 5000000

Asan-log:
==37461==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7f113ed946fc bp 0x7f113be5fd00 sp 0x7ffef7913440 T0)
==37461==The signal is caused by a READ memory access.
    #0 0x7f113ed946fc in gf_isom_get_user_data_count isomedia/isom_read.c:2754
    #1 0x7f113f6ff701 in isor_setup_channel filters/isoffin_load.c:731
    #2 0x7f113f70c220 in isor_declare_track filters/isoffin_load.c:1180

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/4/4_poc.mp4

References:
  https://github.com/gpac/gpac/issues/3155
  https://www.cve.org/CVERecord?id=CVE-2025-55651
  https://infosec.exchange/@sigdevel/116710512103919834

——
Best regards, Alexander A. Shvedov
https://github.com/sigdevel

