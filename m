X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/13/1
Message-ID: <8880da36-027d-436c-b6b0-ae583d0c2b77@oracle.com>
Date: Mon, 12 Oct 2026 18:27:24 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Fwd: Announcing FreeType version 2.15.0
Content-Type: text/plain; charset=utf-8

While the notes below only mention the fix for CVE-2026-95512,
the CVE record for CVE-2026-50811 also lists a commit included
in this release.

The git log also mentions pulling in the fix for CVE-2026-27171
to the vendored copy of zlib 1.3.1 included in FreeType.

	-alan-

-------- Forwarded Message --------
Subject: 	Announcing FreeType version 2.15.0
Date: 	Mon, 12 Oct 2026 21:18:47 +0000
From: 	Werner LEMBERG <wl@....org>
To: 	freetype-announce@...gnu.org, freetype@...gnu.org, freetype-devel@...gnu.org

FreeType 2.15.0 has been released.

It is available from

      https://download.savannah.gnu.org/releases/freetype/

or

      https://sourceforge.net/projects/freetype/files/

The latter site also holds older versions of the FreeType library.

See below for the relevant snippet from the CHANGES file.

Enjoy!


     Werner


PS: Downloads from  savannah.nongnu.org  will redirect to your nearest
      mirror site.   Files on  mirrors may  be subject to  a replication
      delay   of   up   to   24   hours.   In   case   of  problems  use
      https://download-mirror.savannah.gnu.org/releases/


----------------------------------------------------------------------


https://www.freetype.org


FreeType 2  is a software  font engine that  is designed to  be small,
efficient,  highly   customizable,  and  portable   while  capable  of
producing high-quality output (glyph images) of most vector and bitmap
font formats.

Note that  FreeType 2 is  a font service  and doesn't provide  APIs to
perform higher-level features, like text layout or graphics processing
(e.g.,  colored  text  rendering,  'hollowing',  etc.).   However,  it
greatly simplifies these tasks by providing a simple, easy to use, and
uniform interface to access the content of font files.

FreeType  2  is  released  under  two open-source  licenses:  our  own
BSD-like FreeType  License and the  GPL.  It can  thus be used  by any
kind of projects, be they proprietary or not.


----------------------------------------------------------------------


You  can use  a  `.sig` file  to verify  that  the corresponding  file
(without the  `.sig` suffix)  is intact.  First,  be sure  to download
both  the `.sig`  file and  the  corresponding archive.   Then, run  a
command like this:

    gpg --verify freetype-2.15.0.tar.gz.sig

If that command fails because you  don't have the required public key,
execute

    gpg --keyserver pgp.mit.edu --recv-keys BE6C3AAC63AD8E3F

to import it, then rerun the `gpg --verify` command.

SHA1 file checksums:

a28dbab6c7dd2d49d2987cbd93f2d485ed888b34  freetype-2.15.0.tar.gz
1cddd9a66c8ce2972c20890c07b7a75231c21787  freetype-2.15.0.tar.xz
fd13d7dc433e129c756478352d728298560972e1  ft2150.zip
2639d289a08699acfabd0f885e60047dad7519c5  ft2demos-2.15.0.tar.gz
7ada0e81cee60715e6a3258edbb1b06c66321e7a  ft2demos-2.15.0.tar.xz
8cf05e9972aa34b3a230feea81ebc184ea24f97d  ftdmo2150.zip
23fadcc0da7b8ead6d3ab51e020e52b26c733af5  freetype-doc-2.15.0.tar.gz
e4dce0796ecbf26edfdcff10ed9ec06bcf13482e  freetype-doc-2.15.0.tar.xz
b10d8a9d7a6574d5a792abcb9adef9be4783c380  ftdoc2150.zip

SHA256 file checksums:

9186627467a616d9a9e3e574748ac0c45fa77398e6364edef3041a8ba8d92f64 
freetype-2.15.0.tar.gz
93cd47eb719c325107f2d3cf087d06299e944c3b48a40b55537302304dea1dd5 
freetype-2.15.0.tar.xz
6de0090703ff0658ec2886c1de3c1887801d4988b9fd72d622e815a5c5d768c9  ft2150.zip
c1640bddfdf17ef93de7171f51216a1b7828e740cf69ad54451256085a9acc07 
ft2demos-2.15.0.tar.gz
9b77c9ccf3965d2c5e65383c7c7fdb411d6239c402426f32f7411fade396c268 
ft2demos-2.15.0.tar.xz
c2a086745711de854efe4c70d3c6a6e03589cfb08e76eeaa32f82cba487757ee  ftdmo2150.zip
a20a05dc7226b9c995cd0ea508bfa627a9604393e2223ee44bff8e11ee4cc80a 
freetype-doc-2.15.0.tar.gz
151b3f0a221b39775a0b2aa8e5893a60c4ef5ed7081371c5cce27250808bdff5 
freetype-doc-2.15.0.tar.xz
ce21770d4329806f4e79649bbee0b9fe8cb546993db19061ce5c428077cd0be9  ftdoc2150.zip


CHANGES BETWEEN 2.14.3 and 2.15.0 (2026-Oct-12)

    I. IMPORTANT CHANGES

    - Support for the ISO Open Font  Format, Edition 5 (released in July
      2026) has been contributed by  Behdad Esfahbod, using various LLMs
      for deriving  basic code from HarfBuzz  and other implementations,
      followed by manual fine-tuning, mainly for greater speed.

      . The  new  'VARC' table  allows  a  file  size reduction  of  CJK
        Variation fonts by up to 90%.

      . OpenType fonts with  more than 65536 glyphs can  now be handled.
        The  new tables  related to  this feature  are all  written with
        uppercase  letters:  'MAXP',  'GLYF',  'LOCA',  'HHEA',  'VHEA',
        'HMTX', 'VMTX', 'GVAR', 'DMAP'.

      . The new 'GLYF' table also supports outlines with mixed cubic and
        conic segments.

    - The anti-aliased rasterizer now uses dynamic heap memory for large
      glyphs,  which  significantly improves  its performance  at  sizes
      above 40 ppem.

    - An  experimental  HVF  driver   has  been  contributed  by  Apple,
      currently available on macOS only.

    - The  TrueType   version  40  interpreter  got   several  ClearType
      rendering  improvements.   It  now   better  honors  'gasp'  table
      requests  for  symmetric  grid  fitting and  smoothing,  and  more
      closely  emulates  native   ClearType  horizontal  hinting.   This
      includes improved handling of rounded point instructions, `ROUND`,
      CVT cut-in, minimum distance, and composite glyph positioning.

      These changes improve  the rendering of fonts such  as 'Segoe UI',
      'Calibri', 'Corbel', 'Constantia', 'Malgun Gothic', 'SimSun',  and
      'Comic Sans MS'.


    II. IMPORTANT BUG FIXES

    - Continued efforts to scrutinize FreeType with AI tools resulted in
      more bugs  being fixed, some with  potential security implications
      (e.g., CVE-2026-95512).


    III. MISCELLANEOUS

    - The PFR driver returned wrong kerning values in some cases.

    - A port to the Plan 9 operating system is now available.

