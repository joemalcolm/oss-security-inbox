X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/3
Message-ID: <trinity-ba69a245-985d-4eb3-b6e2-f7a575883eca-1782749064928@trinity-msg-rest-gmx-gmx-live-5556f6f97d-8phcp>
Date: Mon, 29 Jun 2026 16:04:25 +0000
From: "Alexander A. Shvedov" <shvedov@....fr>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-0645: libjxl/cjxl out-of-bounds read in EXIF metadata parsing
Content-Type: text/plain; charset=utf-8

Product:    JPEG XL / libjxl
Affected:   libjxl versions before 0.8.1
CVE:        CVE-2023-0645
CWE:        CWE-125 (Out-of-bounds Read)
CVSS 3.1:   9.1 CRITICAL (NVD: AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:H)
CVSS 3.1:   5.3 MEDIUM (CNA/Google: AV:N/AC:H/PR:L/UI:N/S:U/C:H/I:N/A:N)
Reporter:   sigdevel <https://infosec.exchange/@sigdevel> / Alexander A. Shvedov

Description:
  An out-of-bounds read exists in libjxl when parsing EXIF metadata. A
  crafted JPEG file processed through cjxl can make jxl::FindExifTagPosition()
  read the number of EXIF tags from a pointer that is outside the EXIF buffer.

  Cjxl reads a 94120-byte JPEG input and then crashes
  while doing lossless JPEG transcoding. The crash happens in lib/jxl/exif.h
  when FindExifTagPosition() evaluates the EXIF tag count:

      uint16_t nb_tags = (bigendian ? LoadBE16(t) : LoadLE16(t));

  The backtrace from the upstream issue shows the following path:

      jxl::FindExifTagPosition()
      jxl::InterpretExif()
      JxlEncoderAddJPEGFrame()
      jxl::extras::EncodeImageJXL()
      main()

  The bug is caused by insufficient validation that the t pointer still points
  inside the EXIF buffer before reading nb_tags. This can be triggered by an
  attacker-controlled input file and results in a segmentation fault / abnormal
  process termination. Depending on the caller, this can be used for denial of
  service.

Reproduction:
  The upstream issue used the following command:

      cjxl sig_11_src_000122_poc --disable_output

  Reported output:

      JPEG XL encoder v0.9.0 aa99c8d8 [AVX2,SSE4,SSSE3,Unknown]
      Read JPEG image with 94120 bytes.
      Encoding [Container | JPEG, lossless transcode, effort: 7 | JPEG reconstruction data],
      Segmentation fault (core dumped)

Fix:
  The fix adds bounds checking before the EXIF tag count is read, ensuring that
  the t pointer is still within the EXIF buffer. The issue was fixed upstream
  through PR #2101 and is included in libjxl 0.8.1. Users should upgrade to
  version 0.8.1 or later, or apply the referenced upstream fix commit.
  
PoC:
  https://github.com/sigdevel/pocs/blob/main/res/libjxl/2022_01_25/sig_11_src_000122_poc
  
References:
  https://nvd.nist.gov/vuln/detail/CVE-2023-0645
  https://github.com/libjxl/libjxl/issues/2100
  https://github.com/libjxl/libjxl/pull/2101
  https://github.com/libjxl/libjxl/pull/2101/commits/d95b050c1822a5b1ede9e0dc937e43fca1b10159

——

