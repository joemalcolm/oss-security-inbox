X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/24
Message-ID: <0f90873f-0760-47be-99e8-5fa43e4e66fd@oracle.com>
Date: Wed, 21 Oct 2026 12:12:13 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Pillow 13.0.0 fixes long list of vulnerabilities
Content-Type: text/plain; charset=utf-8

https://pillow.readthedocs.io/en/stable/releasenotes/13.0.0.html lists
many security fixes included in the release.  The latest update from
https://github.com/python-pillow/Pillow/blob/main/docs/releasenotes/13.0.0.rst
shows:
> Critical
> ^^^^^^^^
> 
> * CVE-2026-96639, GHSA-v9pv-5gc8-w2m6: Stale native image storage reused after mode transitions
> * CVE-2026-112398, CVE-2026-112403, GHSA-5x8w-8jj5-q52h, GHSA-8g5g-8vmr-9782: JPEG decoder buffer overflow from scanlines wider than tile extents
> 
> High
> ^^^^
> 
> * CVE-2026-96644, GHSA-9v9v-9qvf-h2hj: WMF/EMF heap out-of-bounds read from dimension truncation
> * CVE-2026-96637, GHSA-g842-9rc4-69pw: SPIDER decompression bomb bypass via seek()
> * CVE-2026-96643, GHSA-g4qv-2jxx-769h: Unbounded Exif header replacement loop
> * CVE-2026-96778, GHSA-g7cr-3p24-7wf7: JPEG comment write after ICC profile fills encoder buffer
> * CVE-2026-112395, CVE-2026-112404, GHSA-462x-pgg6-55fp, GHSA-c6hw-5grf-ff96: TIFF tile and YCbCr decoding out-of-bounds read from undersized libtiff buffers
> * CVE-2026-112895, GHSA-p4wg-p73j-c528: PDF parsing stack exhaustion from long trailer chains and deep or cyclic page trees
> * CVE-2026-96640, GHSA-mrfp-p49p-3hf2: PDF append resource exhaustion from repeated page tree references
> * CVE-2026-112896, GHSA-pchr-8j38-3x4p: TIFF encoder accepted an incorrectly sized Colormap for non-8-bit images
> * CVE-2026-112393, GHSA-332p-7hrc-92wf: TIFF encoder heap buffer overflow when saving to a file object
> * GHSA-xcvg-w56q-r89m: TIFF encoder heap buffer overflow when tags override the image size
> * CVE-2026-112902, GHSA-xvh5-g6gv-559v: TIFF encoder memory disclosure and crash from mismatched tag values
> * CVE-2026-112897, GHSA-q45j-58j2-45rg: TIFF decoding returned uninitialized memory for short JPEG strips
> * GHSA-78g4-xqwv-q3g8: Bundled OpenJPEG heap buffer overflow when reading tile-part data
> 
> Medium
> ^^^^^^
> 
> * CVE-2026-112396, GHSA-4rr5-89j8-mwwm: TIFF encoder use-after-free write
> * CVE-2026-96636, GHSA-p8hx-v2p6-rp84: MPO, DCX and MIC decompression bomb bypass via seek()
> * CVE-2026-112406, GHSA-f2g6-542v-9j58: PDF page tree stack exhaustion via cyclic ``/Kids`` reference
> * CVE-2026-112399, GHSA-5xm2-6676-qcp9: APNG decompression bomb bypass via delayed disposal-frame sizing
> * CVE-2026-96642, GHSA-3j72-p6qg-6xp7: TarIO negative size field causes infinite CPU-spin loop
> * CVE-2026-96638, GHSA-24rc-8hj2-v98c: BMP RLE decoder memory-amplification denial of service
> * CVE-2026-112892, GHSA-gg2r-wvfm-q9rx: MSP RLE decoder expands a tiny file into unbounded memory
> * GHSA-wqgw-9xfh-qf2g: TIFF and Exif IFD parsing memory and CPU amplification from shared tag data
> * CVE-2026-112894, GHSA-jg86-v3jv-hrpm: Quadratic time when writing many objects to a PDF
> * CVE-2026-112391, GHSA-254f-3936-288h: PdfParser unbounded recursion via deeply nested objects
> * CVE-2026-112898, GHSA-rfgq-q3w2-pmv2: Image.quantize() crash from an empty target palette
> * CVE-2026-112901, GHSA-xgh8-jp6q-p5x8: XBM header parsing regular expression denial of service
> * CVE-2026-112390, CVE-2026-112401, CVE-2026-112891, GHSA-22hg-r758-rrw9, GHSA-74r2-7ff9-mjj2, GHSA-fc9g-5qg7-mf45: GIF comment handling quadratic-time blowup from repeated concatenation
> * CVE-2026-112392, GHSA-27h8-gf7j-v5hc: Out-of-bounds read in rank-based filters for zero-dimension images
> * CVE-2026-96641, GHSA-4rm8-3hmm-39fg: Integer underflow in PILfont text width calculation
> * CVE-2026-112405, GHSA-cp9v-662q-vvx9: Image.merge() buffer overflow when merging 32-bit images as narrower bands
> * CVE-2026-112893, GHSA-j4m9-6w36-pw47: Uninitialized glyph pointer freed on font rendering error path
> * CVE-2026-112402, GHSA-7mwm-ghpf-9vrm: Double free in ``Image.transform()`` after an allocation failure
> * CVE-2026-112394, GHSA-4558-3h8r-v8xp: ``P;2L`` and ``P;4L`` raw mode decoders read past the end of their input
> * CVE-2026-112900, GHSA-w889-685w-c8fh: EPS filename argument injection into Ghostscript
> * GHSA-654x-cwwv-5j9c: Arrow export leaks stale heap memory when ``PILLOW_ALIGNMENT`` > 1
> 
> Low
> ^^^
> 
> * CVE-2026-112400, GHSA-65qm-jvmh-6pqg: GIF decompression bomb check used a size discarded on failure
> * CVE-2026-112899, GHSA-vx6w-vv9f-6gvg: EPS decompression bomb bypass via Ghostscript rendering
> * CVE-2026-112397, GHSA-58r4-6rv3-gfh8: ImageMorph.MorphOp.apply() out-of-bounds write on zero-width images


The GHSA advisories can be found on
https://github.com/python-pillow/Pillow/security/advisories

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

