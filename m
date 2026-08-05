X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/05/1
Message-ID: <anKLoXh0YED2uKxZ@quokka>
Date: Wed, 5 Aug 2026 11:02:47 +1000
From: Peter Hutterer <peter.hutterer@...-t.net>
To: oss-security@...ts.openwall.com
Subject: FW: X.Org Security Advisory: multiple security issues in libXfont2
Content-Type: text/plain; charset=utf-8

======================================================================
X.Org Security Advisory: August 05, 2026

Issues in libXfont2 prior to 2.0.9
======================================================================

Multiple issues have been found in the libXfont2 library published by
X.Org for which we are releasing security fixes in libXfont2-2.0.9.

* CVE-2026-59679: Font Server Client encoding Out-Of-Bounds Read/Write

   fs_read_glyphs() in the libXfont2 font-server client
   (src/fc/fserve.c) indexes the per-character encoding[] array using
   num_chars from the FS_QueryXBitmaps16 reply, but that array was
   allocated with a size derived from num_extents in the separate
   FS_QueryXExtents16 reply. The two values are never cross-checked,
   so a malicious font server can send a small num_extents (e.g. 1)
   followed by a large num_chars (e.g. 100000) to cause out-of-bounds
   heap reads via NONZEROMETRICS(&encoding[minchar].metrics) and
   out-of-bounds writes of a heap pointer via
   encoding[minchar].bits = bits.

   When the X server runs as root, this can lead to privilege
   escalation. When it runs as an unprivileged user, this results in
   a denial of service (crash).

   This is caused by an incomplete fix of CVE-2014-0210.

   Fixed in: libXfont2-2.0.9
   Fix: https://gitlab.freedesktop.org/xorg/lib/libXfont/-/commit/c5cdb67eba7c35789e034f18e22b269d08170197
   Found by: Zhixi "Jace" Sun, independent security researcher

* CVE-2026-44950: Font Server Client Cumulative Glyph Data Heap Buffer Overflow

   fs_read_glyphs() in the libXfont2 font-server client
   (src/fc/fserve.c) copies each glyph's bitmap data into a single
   allbits buffer allocated to rep->nbytes bytes. The per-glyph
   validation checks only that each source slice (position, length)
   lies within the source bitmap buffer, but never checks whether the
   cumulative destination writes exceed the allocation. A malicious
   font server can send overlapping source offsets (e.g. 1000 glyphs
   each referencing {position:0, length:64} with nbytes=64) so that
   each individual source range passes validation, but the cumulative
   writes total 64000 bytes into a 64-byte heap buffer.

   This is a heap buffer overflow with attacker-controlled content and
   size. When the X server runs as root, this can lead to privilege
   escalation. When it runs as an unprivileged user, this results in
   a denial of service (crash).

   This is caused by an incomplete fix of CVE-2014-0210.

   Fixed in: libXfont2-2.0.9
   Fix: https://gitlab.freedesktop.org/xorg/lib/libXfont/-/commit/2de3cf305c3c9e95410f05fbada967989bcc95af
   Found by: Zhixi "Jace" Sun, independent security researcher

