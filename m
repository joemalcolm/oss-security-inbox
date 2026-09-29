X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/4
Message-ID: <CAAoVtZzeTEWoAX3QALt-GL=b3KA4nA477DfhQW=gHGO+vZEoCw@mail.gmail.com>
Date: Tue, 29 Sep 2026 04:26:38 +0300
From: Cosmin Truta <ctruta@...il.com>
To: oss-security@...ts.openwall.com
Subject: libpng 1.6.59: Use-after-free vulnerability fixed: CVE-2026-46675
Content-Type: text/plain; charset=utf-8

Hello, everyone,

libpng 1.6.59 has been released, fixing a medium-severity
use-after-free vulnerability in the sequential reader, present since
libpng 1.6.0. It affects applications that call png_read_end without
first starting to read the image rows.

Users should either upgrade to libpng 1.6.59 or apply the fix
described below.

=== CVE-2026-46675 ===

Use-after-free of zlib input in png_read_end after incomplete zTXt,
iTXt or iCCP decompression

Security advisory:
https://github.com/pnggroup/libpng/security/advisories/GHSA-qvg3-h654-xq3j

Fix:
https://github.com/pnggroup/libpng/commit/aa77ef38c17ab2fc1b41bec09fb973c6a386641d

CVSS 3.1: 5.9 (Medium) - CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H
CWE: CWE-416 (Use After Free), CWE-825 (Expired Pointer Dereference)
Affected: libpng 1.6.0 through 1.6.58
Fixed: libpng 1.6.59

A crafted zTXt, iTXt or iCCP chunk can make libpng abandon
decompression while zlib still expects more input: for example, with
an invalid window size in the zlib header, with decompressed data too
large for libpng to accept, or with an ICC profile that fails
validation. The chunk handlers released the zlib stream without
clearing its input pointer and count. If the application then calls
png_read_end after png_read_info, without first starting to read the
image rows, png_read_end resumes decompression from that stale
pointer instead of reading the IDAT data.

- zTXt and iTXt: the pointer refers to libpng's chunk read buffer,
  which a later, larger chunk before IDAT (tEXt or pCAL, for example)
  frees and reallocates; the read is a heap use-after-free.
- iCCP: the pointer refers to local arrays of png_handle_iCCP; the
  read is a stack use-after-return.

Impact:
- The dangling pointer is only read, and the decompressed bytes go to
  a scratch buffer that is discarded, so no data is disclosed or
  corrupted.
- The worst outcome is a crash in the heap variant, when the freed
  memory is no longer mapped at the time of the read.
- The affected call sequence is rare in practice: png_read_end called
  this way parses the unread image data as chunks, and fails with a
  libpng error on well-formed files; the stale read happens before
  that error.

Workaround:
Do not call png_read_end when the image rows are not read. If the
chunks after the image data are needed, call png_start_read_image
before png_read_end. Whether upgraded or not, applications that call
png_read_end without reading the image rows should be prepared to
handle a libpng error from it.

Credits:
- Ze Sheng, O2Lab and AISLE
- @JasonHonKL (independent report of the iCCP variant)

=== References ===

- Release: https://github.com/pnggroup/libpng/releases/tag/v1.6.59
- Independent report: https://github.com/pnggroup/libpng/issues/855
- libpng homepage: http://www.libpng.org/pub/png/libpng.html

---
Cosmin Truta
libpng maintainer
