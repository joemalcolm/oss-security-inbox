X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/6
Message-ID: <20260922092201.55b16073@hboeck.de>
Date: Tue, 22 Sep 2026 09:22:01 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: Vulnerabilities in libheif and libde265
Content-Type: text/plain; charset=utf-8

libheif has released another update with various security fixes:
https://github.com/strukturag/libheif/releases/tag/v1.23.5

Pasting the relevant part of the release notes below.

I believe this from the project's README is also relevant:

"Project status (September 2026). libheif and libde265 are maintained
by a single independent developer with almost no recurring funding,
while 61 security advisories had to be investigated, fixed and released
in 2026 alone."

-------------------

v1.23.5 is a security and bugfix release. It is ABI- and API-compatible
with v1.23.4 and is a drop-in replacement.

One of the fixed issues is rated high, so all users are advised to
upgrade. Security fixes

(CVE numbers will be added when assigned.)

    CVE-2026-XXXXX (GHSA-v8qw-hwjv-44hw) Memory exhaustion through a
    mismatch between the container and the bitstream image size. A
    crafted image can declare a small size in its ispe property while
    the bitstream declares a much larger coded frame. The
    container-level checks used the ispe size, so the oversized
    bitstream reached the decoder, which allocated a frame buffer for
    the in-band size before libheif rejected the mismatch. The advisory
    demonstrated this for AV1 with the libaom backend (a 351-byte AVIF
    declaring 64x64 but coding up to 27648x27648, allocating hundreds
    of MB to more than 10 GB), but the same class affects every codec
    whose real frame size lives in the bitstream. The coded size is now
    checked against max_image_size_pixels in the codec-independent
    decode path, before any bytes reach a decoder plugin: all AV1
    sequence headers, all HEVC/AVC/VVC SPS NAL units (including those
    carried in the item data, not only the ones in the configuration
    record), the JPEG SOF marker and the JPEG 2000 SIZ reference grid
    are scanned for the largest coded size. (high) CVE-2026-XXXXX
    (GHSA-qwpf-5wf7-r996) Heap use-after-free and double free when
    encoding an image that carries a TAI timestamp, including
    transcoding a file with an itai property. ImageDescription
    shallow-copied its raw heif_tai_timestamp_packet pointer, and a
    temporary in ImageItem::encode_to_bitstream_and_boxes() freed the
    packet while the item and the source image still held it. The
    timestamp is now stored by value. (medium) CVE-2026-XXXXX
    (GHSA-9c75-9g8r-4728) Memory amplification through a JPEG 2000 pclr
    box declaring zero palette columns. The entry-count bound was
    skipped for zero columns, so an 11-byte box allocated 65,535 empty
    palette entries, and nested j2kH containers could repeat this
    within the child and nesting limits: a 3 KB file reached about 330
    MB RSS, none of it charged to max_total_memory. Zero columns are
    rejected (ISO/IEC 15444-1 requires 1 to 255), the byte bound is
    unconditional, and the palette storage is charged to the memory
    limits. (medium) CVE-2026-XXXXX (GHSA-r7gr-2xm2-23wf) Heap
    out-of-bounds read in alpha compositing for uncompressed (unci)
    images whose colour planes have different bit depths.
    Op_flatten_alpha_plane read every plane through the sample type of
    the first colour plane, so an 8-bit blue plane next to 16-bit red
    and green planes was read with a halved stride past its end, and
    the bytes ended up in the composited output. ColorState now tracks
    one bit depth per plane, and the operator declines mixed sample
    widths at planning time. (medium) CVE-2026-XXXXX
    (GHSA-q492-cfcm-895h) The OpenJPEG decoder plugin's pre-decode size
    check bounded the JPEG 2000 window span (x1-x0)*(y1-y0) but not the
    absolute reference-grid coordinates, so a codestream with a
    17-pixel window on a grid near the 32-bit boundary reached
    opj_decode(). Against OpenJPEG 2.3.1 this produced a
    heap-buffer-overflow write inside OpenJPEG (the class of
    CVE-2020-6851); OpenJPEG 2.5.4 rejects the input. The
    reference-grid area is now bounded as well. (low)
    (GHSA-qfj5-c4pq-q998) Heap out-of-bounds read in the uncompressed
    encoder when an application attached a separate alpha plane to an
    image with an interleaved chroma format. The interleaved encoders
    took their component list from the chroma format (three entries)
    but decided whether to write alpha from the presence of an alpha
    plane, and indexed the list at [3]. heif_image_add_plane() now
    rejects a separate alpha plane on interleaved images, and the
    encoders derive both decisions from the chroma format. Only
    reachable through the public API; decoding never produces such an
    image. (low) (GHSA-7pwf-qh74-p35w) The caller's
    heif_security_limits were not applied when parsing a mini box (the
    MIAF minimized image format) or the av1C/hvcC blob embedded in it;
    the built-in defaults were used instead. An application that
    tightened the limits got no enforcement of its
    max_memory_block_size or max_total_memory on such files. The
    allocations are bounded by the bytes present in the box, so this
    could not amplify memory use. (low)

Thanks to @homm, @jitxie (Yunding Lab, Tencent Security), @peter-hendy,
@joelczk, @adamyordan, @k3mlol, @bruhdev1290 and @hyunjungdoh for
reporting these issues, and to @SomnathDas, @sil3ntwizard and @iceray00
for the reports behind the API-contract and UBSan items under
Hardening. Hardening

    Colour conversion tracks one bit depth per plane instead of one
    image-wide value, and every operator declares the sample width and
    the per-plane depths it can read, so images with mixed plane depths
    (which unci allows) are declined at planning time instead of being
    caught, or not, by runtime checks. The blanket check that refused
    every mixed-depth YCbCr conversion (GHSA-w7mc-p8jc-p853) is
    replaced by per-operator constraints The colour-conversion and
    encoder entry points verify the plane layout: the planes that an
    image's colorspace and chroma format imply must be present exactly
    once, at the implied sizes. Missing, duplicate or foreign planes
    previously failed deep inside an operator, passed through as a
    no-op, or hit an assert() in the x265 plugin that release builds
    compile out heif_image_add_plane() rejects a Cb or Cr plane whose
    size does not match the chroma subsampling of the image. An
    oversized plane built this way fooled the row fill in
    heif_image_extend_to_size_fill_with_zero() into a 4 GB
    out-of-bounds write (GHSA-j2rv-58fh-w8pw), an undersized one caused
    out-of-bounds reads in the RGB conversion (#1796). Only reachable
    by an application constructing an inconsistent image through the
    public API heif_image_extend_to_size_fill_with_zero() rejects a
    target smaller than the current image with a usage error instead of
    underflowing the fill length and writing past the plane
    (GHSA-hqc2-cx5m-g6ff, only reachable by out-of-contract API use)
    memcpy() is never called with a NULL pointer, even for zero-length
    copies (empty box payloads, zero-length iloc extents, empty ICC
    profiles or masks). This is undefined behaviour in C17 and C++ and
    was reported by UBSan (GHSA-2764-mqj2-c458, GHSA-x8qp-vqp7-mm4r)
    JPEG 2000 pclr: the palette precision field is read and written as
    the specification defines it (the low 7 bits hold the precision
    minus one), and the entry count is returned as the 16-bit value it
    is


-- 
Hanno Böck
https://hboeck.de/
