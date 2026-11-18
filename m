X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/14
Message-ID: <trinity-0c515f3e-f040-438f-95ef-12ae0f080758-1794992783340@trinity-msg-rest-gmx-gmx-live-6b6d8476df-9b6pn>
Date: Wed, 18 Nov 2026 09:06:23 +0000
From: "Alexander A. Shvedov" <sigdevel@...amail.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-130631: GPAC/MP4Box: Uninitialized Pointer Access in GetESD via RVC Configuration
Content-Type: text/plain; charset=utf-8

Product:   GPAC (MP4Box)
Affected:  GPAC < 26.07.0
           Reproduced on 26.03-DEV-rev329-g8f5b30243-master
           Commit 8f5b302439e9ac08f92faeef18c1d97cc77698bf
Fixed:     25081b9610477fc8de48d2f1cadd3fd232a9dcbc
CVE:       CVE-2026-130631
CWE:       CWE-824 (Access of Uninitialized Pointer)
CVSS 3.1:  5.5 MEDIUM (AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)
Reporter:  Alexander A. Shvedov (@sigdevel)

Description:
  A crafted MP4 contains an rvcc box with predefined_rvc_config set to zero
  and no meta item index. The RVC configuration lookup leaves mime_type
  uninitialized, and GetESD() uses it in strcmp() at isomedia/track.c:212.
  Valgrind reports an uninitialized value followed by an invalid read and
  SIGSEGV.

Impact:
  Processing attacker-controlled input can terminate MP4Box and cause denial
  of service. Arbitrary code execution was not demonstrated.

Reproduction:
  Run the tested GPAC build under Valgrind:

    valgrind ./MP4Box -add 73_isomedia_track_c_GetESD -new /dev/null

Valgrind log excerpt:
  Conditional jump or move depends on uninitialised value(s)
      at GetESD (isomedia/track.c:212)
  Use of uninitialised value of size 8
      at __strcmp_avx2
      by GetESD (isomedia/track.c:212)
  Invalid read of size 32
      at __strcmp_avx2
      by GetESD (isomedia/track.c:212)
  Address 0x45 is not stack'd, malloc'd or (recently) free'd

Fix:
  Update to GPAC v26.07.0 or a later release containing the fix:

    https://github.com/gpac/gpac/releases/tag/v26.07.0

PoC:
  https://github.com/sigdevel/pocs/blob/main/res/gpac/MP4Box/73/73_isomedia_track_c_GetESD

References:
  https://github.com/gpac/gpac/issues/3592
  https://github.com/gpac/gpac/commit/25081b9610477fc8de48d2f1cadd3fd232a9dcbc
  https://www.cve.org/CVERecord?id=CVE-2026-130631
  https://raw.githubusercontent.com/CVEProject/cvelistV5/main/cves/2026/130xxx/CVE-2026-130631.json
  https://www.vulncheck.com/advisories/gpac-before-26.07.0-uninitialized-pointer-access-in-getesd-via-rvc-configuration


——
Best regards, Alexander A. Shvedov
@sigdevel
