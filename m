X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/23/1
Message-ID: <1f5e4ffb-7856-46ad-a06b-d79bb81591ca@cs.ucla.edu>
Date: Sat, 22 Aug 2026 22:46:15 -0700
From: Paul Eggert <eggert@...ucla.edu>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-41992 gzip 1.14 out-of-bounds memory buffer access
Content-Type: text/plain; charset=utf-8

CVSS Base Score: medium

Affected versions: gzip 1.14 and earlier

Description: Out-of-bounds memory buffer access that can be triggered if a single gzip -d instance decompresses specially crafted LZW data followed by specially crafted LZH data.

Users are recommended to apply the following patch, or to install gzip 1.15 whenever it comes out:

--- gzip-1.14/unlzh.c	2024-08-09 15:06:03.000000000 -0700
+++ gzip-1.14-CVE-2026-41992/unlzh.c	2026-08-22 22:26:05.384251837 -0700
@@ -307,6 +307,12 @@
  static void
  huf_decode_start ()
  {
+    /* Needed in case LEFT and RIGHT are reused from a previous
+       LZW decompression.  It may be overkill to clear all of both
+       arrays, but nobody has had time to analyze this carefully.  */
+    memzero (left, (2 * NC - 1) * sizeof *left);
+    memzero (right, (2 * NC - 1) * sizeof *right);
+
      init_getbits();  blocksize = 0;
  }
  

Credits: Thanks to Michał Majchrowicz and to Elias Hasas for reporting the problem and supplying fixes.

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
