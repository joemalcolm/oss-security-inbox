X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/08/2
Message-ID: <ak2rrrDsIGhyr_KF@quokka>
Date: Wed, 8 Jul 2026 11:46:58 +1000
From: Peter Hutterer <peter.hutterer@...-t.net>
To: oss-security@...ts.openwall.com
Subject: FW: X.Org Security Advisory: multiple security issues X.Org X server and Xwayland
Content-Type: text/plain; charset=utf-8

=======================================================================
X.Org Security Advisory: July 08, 2026

Issues in X.Org X server prior to xorg-server-21.1.24
and Xwayland prior to xwayland-24.1.13
=======================================================================

Multiple issues have been found in the X server and Xwayland implementations
published by X.Org for which we are releasing security fixes for in
xorg-server-21.1.24 and xwayland-24.1.13.

* CVE-2026-55999: glamor Font Atlas Heap Buffer Overflow

   glamor_font_get() builds a per-font texture atlas by laying out every
   glyph in the font into a single backing buffer. It computes the slot
   dimensions from the font's declared maxbounds, but copies each per-glyph
   bitmap using the individual glyph's metrics (GLYPHHEIGHTPIXELS /
   GLYPHWIDTHBYTES macros). There is no check that maxbounds actually
   bounds the per-glyph values.

   When the font is loaded from a malicious PCF file whose per-glyph
   metrics exceed the file's maxbounds, the per-glyph memcpy writes far
   beyond the heap-allocated slot, producing a heap buffer overflow with
   attacker-controlled extent and attacker-controlled content.

   An authenticated X client can trigger this by using SetFontPath to
   add a directory containing a crafted PCF font, loading the font with
   OpenFont, and drawing text on a glamor-backed drawable. Only servers
   using the glamor acceleration backend (Xorg with modesetting driver,
   Xwayland) are affected.

   Fixed in: xorg-server-21.1.24 and xwayland-24.1.13
   Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/fbf7bac22e2c6bd627fb042742a23318263edae1
   Found by: Anonymous working with Trend Micro Zero Day Initiative.
             (ZDI-CAN-30498)

* CVE-2026-56000: GLX contextTags Use-After-Free in CommonMakeCurrent()

   **IMPORTANT:** This issue was reported against 21.1.16 but we've been
   unable to reproduce it on that release. It is present on the main and
   the discontinued master branch and in Xwayland. Distributions that
   backported upstream commit 4781f2a5a8c2c2b000374e2d87982a6701d5a6b3 to
   21.1.x are definitely affected.

   CommonMakeCurrent() in the GLX dispatch layer captures a pointer into
   the per-client cl->contextTags array by calling GlxLookupContextTag().
   This returns a direct pointer into an array later realloced. If realloc()
   moves the buffer to a new location, the previously captured oldTag pointer
   becomes dangling.

   The subsequent GlxFreeContextTag(oldTag) then writes zeros into freed
   heap memory (use-after-free). Five fields are zeroed at fixed offsets
   (16, 24, 32, 36, 40 bytes) within the stale slot.

   A malicious client can force the realloc by creating 16 GLX contexts
   with MakeCurrent(oldContextTag=0) to fill all tag slots to capacity,
   then issuing a 17th MakeCurrent with a non-zero oldContextTag. This
   triggers the realloc while oldTag points into the old buffer. The
   attack requires only 34 X11 requests (17 CreateContext + 17
   MakeCurrent) from a single client.

   Fixed in: xorg-server-21.1.24 and xwayland-24.1.13
   Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/2779affbdb4354e894f490e56f962527d6125043
   Found by: Anonymous working with Trend Micro Zero Day Initiative.
             (ZDI-CAN-30561)


Download attachment "signature.asc" of type "application/pgp-signature" (196 bytes)
