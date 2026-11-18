X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/1
Message-ID: <avz565ILX4cWK0HL@frog>
Date: Wed, 18 Nov 2026 11:06:22 +1000
From: Peter Hutterer <peter.hutterer@...-t.net>
To: oss-security@...ts.openwall.com
Subject: FW: X.Org Security Advisory: Issues in X.Org libFontenc and libXfont
Content-Type: text/plain; charset=utf-8

======================================================================
X.Org Security Advisory: November 18, 2026 

Issues in libFontenc prior to libfontenc-1.1.10 and libXfont prior to libXfont2-2.0.10
======================================================================

1) CVE-2026-109908: X.Org libfontenc File Parsing Validation Failure

libfontenc's .enc encoding-file parser contains a heap out-of-bounds write
in setCode() (src/encparse.c). The destination index is computed as (from
>> 8) * row_size + (from & 0xFF), where row_size is taken straight from the
SIZE line of the encoding file and is never bounded, while the destination
buffer is allocated at a constant cap of 0x10000 entries.

A crafted .enc file makes the index exceed the allocation and writes past
it. The Xorg/Xwayland X server links libfontenc via libXfont2 and parses
.enc files in its own process during font rasterization.

Where the X server runs as root, a local user that places a font file and
an encoding file on a server-read font path can trigger the OOB write,
triggering potential local privilege escalation.

Fixed in: libfontenc-1.1.10
Fixes:
  - https://gitlab.freedesktop.org/xorg/lib/libfontenc/-/commit/5920c6ee144fffff84b62f5b479171f734f15316

Acknowledgements:
    Adam Bedard working with TrendAI Zero Day Initiative

2) CVE-2026-109909: PCF Font Parsing Negative Skip Out-Of-Bounds Read

BufFileRawSkip() in libXfont accepts a signed int count parameter but
does not validate it for negative values. A crafted PCF font file can
supply a table offset that, when subtracted from the current file
position in pcfSeekToType(), wraps to a negative value due to unsigned
to signed integer conversion. The negative count passes the in-buffer
bounds check in BufFileRawSkip() (curoff + count <= fileoff is trivially
true when count is negative) and advances the buffer pointer backward
past the buffer start. Subsequent FontFileGetc() calls then dereference
the corrupted buffer pointer, reading from invalid heap memory or
unmapped pages.

An attacker who can cause the X server or any application using
libXfont to load a malicious PCF font file can trigger an
out-of-bounds heap read, potentially leaking sensitive information
from the process memory space via QueryFont responses, or crash the
process via a segmentation fault.

Fixed in: libXfont2-2.0.10
Fixes:
  - https://gitlab.freedesktop.org/xorg/lib/libxfont/-/commit/dc6c313071c8b2929b1bc165e40c8ba62737b576

Acknowledgements:
    Elias Myllymäki working with TrendAI Zero Day Initiative

3) CVE-2026-109920: libXfont2 FreeType backend uninitialised strike_index out-of-bounds read

FreeTypeOpenInstance() allocates FTInstanceRec with a bare malloc() and
then assigns instance->strike_index only inside an
"if (FT_IS_SFNT(face->face))" block.  There is no else branch.

A non-SFNT face -- any bitmap font that FreeType's own bitmap driver
claims, which libXfont2 reaches whenever such a file carries a FreeType
renderer suffix such as .pfb -- leaves the field holding raw heap bytes.

The field is then passed unchecked to FT_Do_SBit_Metrics() and used
directly as a 64-bit array subscript:

    FT_Bitmap_Size*  sz = &ft_face->available_sizes[strike_index];

The 0xFFFFU sentinel check on the previous line is not a bounds check:
it filters exactly one value out of 2^64, so a raw heap word almost
always passes it.  With num_fixed_sizes == 1 the only in-bounds
subscript is 0; any other value causes an out-of-bounds read that
crashes the X server.

A local client can reach this path with ordinary core protocol requests:
spray the server heap with ChangeProperty, point the font path at a
directory it controls with SetFontPath, then OpenFont.  The font file
does not need to be crafted -- an unmodified vendor-shipped .pcf font
renamed to .pfb is sufficient.

CWE-457 (use of uninitialised variable) leading to CWE-125
(out-of-bounds read).

Fixed in: libXfont2-2.0.10
Fixes:
  - https://gitlab.freedesktop.org/xorg/lib/libxfont/-/commit/539f716dabe0137097ed6b8492cae1c3321c4d69

Acknowledgements:
    Apex Security Research (apex-security-research@...ton.me)
------------------------------------------------------------------------

X.Org thanks all of those who reported and fixed these issues, and those
who helped with the review and release of this advisory and these fixes.

