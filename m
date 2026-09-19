X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/19/5
Message-ID: <20260919111415.60fa8522@hboeck.de>
Date: Sat, 19 Sep 2026 11:14:15 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: Vulnerabilities in libheif and libde265
Content-Type: text/plain; charset=utf-8

Hi,


On Fri, 18 Sep 2026 16:57:13 -0700
Alan Coopersmith <alan.coopersmith@...cle.com> wrote:

> https://heif-heist.com/ seems more promotional than informational at
> this point, but it does point out there are a number of exploitable
> vulnerabilities in "native C/C++ decoders such as libheif and
> libde265".


Not sure if related, but this very recent commit
https://github.com/strukturag/libheif/commit/6ce2bba558a27b63a508e81c085025f91c89899b
sounds like it could be security-related and it is not part of the
1.23.4 release.

Copying over commit description:
---------
Reject in-band coded image sizes over the security limit for all codecs (GHSA-v8qw-hwjv-44hw)
A crafted image can declare a small size in its container 'ispe' property while
its bitstream declares a much larger coded frame. The container-level checks are
based on 'ispe', so the oversized bitstream was handed to the decoder, which
allocated a buffer for the in-band size before libheif rejected the mismatch.
The advisory demonstrated this for AV1 with the libaom backend (a ~351-byte AVIF
declaring 64x64 but coding 8192x8192..27648x27648, allocating hundreds of MB to
>10 GB), but the same class affects every codec whose real frame size lives in
the bitstream rather than in the container.

Enforce the coded size in the codec-independent decode path, before any bytes
reach a decoder plugin, so the fix is both codec- and backend-independent (it
protects the ffmpeg backend too, which does no size check of its own):

  - Rename the per-decoder hook get_coded_image_size_from_config() to
    get_max_coded_image_size(const std::vector<uint8_t>&). The old name no longer
    described the behaviour: it now scans the whole bitstream, not just the
    configuration record. It is an internal method with a single caller.

  - decode_sequence_frame_from_compressed_data() now fetches the compressed data
    once and passes that same buffer to both the size gate and the decoder push,
    so the combined config+bitstream buffer is not built twice per decode.

  - AV1/AVIF: scan every OBU_SEQUENCE_HEADER in the combined configOBUs + item
    data for the largest max_frame_width/height (new
    find_max_av1_frame_size_in_stream()).

  - AVC/HEVC/VVC: scan every SPS NAL unit in the combined config + item data
    (new split_nal_units_4byte_length_prefixed()), not just the SPS in
    avcC/hvcC/vvcC, since an SPS carried in the item data also drives the
    decoder's allocation. Return the largest coded (pre-crop) size.

  - JPEG: parse the SOF marker dimensions (previously discarded) and gate on them.

  - JPEG 2000 / HTJ2K: parse the SIZ reference grid (Xsiz, Ysiz) from the
    codestream. This makes the check backend-independent; the OpenJPEG plugin's
    own grid gate (GHSA-q492-cfcm-895h) remains as a backstop.

Uncompressed images are libheif's own decoder and are sized from the container,
so they are not in this class.

Add regression tests: tests/inband_coded_size_limit.cc (the advisory AV1 PoC
plus HEVC/AVC/JPEG in-band attack files) and tests/nal_split.cc (NAL splitter
edge cases).


-- 
Hanno Böck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
