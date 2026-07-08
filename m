X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/08/1
Message-ID: <ak2ksdJ1BOEIQBCg@quokka>
Date: Wed, 8 Jul 2026 11:15:52 +1000
From: Peter Hutterer <peter.hutterer@...-t.net>
To: oss-security@...ts.openwall.com
Subject: FW: X.Org Security Advisory: multiple security issues in libXfont2
Content-Type: text/plain; charset=utf-8

======================================================================
X.Org Security Advisory: July 08, 2026

Issues in libXfont2 prior to 2.0.8
======================================================================

Multiple issues have been found in the libXfont2 library published by
X.Org for which we are releasing security fixes in libXfont2-2.0.8.

* CVE-2026-56001: BitmapScaleBitmaps Integer Overflow Heap Buffer Overflow

   In libXfont2's BitmapScaleBitmaps() function, a 32-bit variable
   keeps the number of bytes to allocate. If the value overflows due to
   excessive per-glyph byte counts, the resulting calloc() allocates a buffer
   too small for the subsequent operations.
   
   An attacker can trigger this by loading a crafted PCF font via SetFontPath +
   OpenFont at a scale factor that inflates per-glyph byte counts.

   Fixed in: libXfont2-2.0.8
   Fix: https://gitlab.freedesktop.org/xorg/lib/libxfont/-/commit/be0b08e2d354138d3222b4490e2a77c6ee42f778
   Found by: Anonymous working with Trend Micro Zero Day Initiative.
             (ZDI-CAN-30558)

* CVE-2026-56002: PCF Font Parsing Heap Buffer Overflow

   In libXfont2's pcfReadFont() function, the repadded bitmap buffer
   is allocated using a bitmapSizes[] value read directly from the PCF
   file without cross-validation against per-glyph metrics. Writing to
   that array uses the per-glyph metrics from the file also without validation.

   A malicious PCF font can declare a tiny bitmapSizes[] value (e.g. 16
   bytes) for the server's glyph pad index and a per-glyph
   metrics that exceeds this size, causing a write past the end of the
   allocation with attacker-controlled content from the PCF BITMAPS payload. No
   rendering is needed -- the overflow occurs during font parsing itself.

   Fixed in: libXfont2-2.0.8
   Fix: https://gitlab.freedesktop.org/xorg/lib/libxfont/-/commit/b4389e0b1d84a690b819bb27b1439968811a3674
   Found by: Anonymous working with Trend Micro Zero Day Initiative.
             (ZDI-CAN-30559)

* CVE-2026-56003: computeProps Property Buffer Heap Buffer Overflow

   In libXfont2's ComputeScaledProperties() function, a fixed-size
   property buffer of 70 slots (1120 bytes) is allocated. The 
   source font properties then trigger a write of 1 slot per unscaled match or
   2 slots per scaledX/scaledY match, with no bounds check against the buffer
   capacity.

   The PCF parser does not deduplicate properties, so a malicious font
   can include arbitrarily many properties with the same name atom
   (e.g. 40 duplicate MIN_SPACE entries), exceeding the property buffer.

   Fixed in: libXfont2-2.0.8
   Fix: https://gitlab.freedesktop.org/xorg/lib/libxfont/-/commit/dff957a5158da038a282a59a31fe736702732939
   Found by: Anonymous working with Trend Micro Zero Day Initiative.
             (ZDI-CAN-30560)


Download attachment "signature.asc" of type "application/pgp-signature" (196 bytes)
