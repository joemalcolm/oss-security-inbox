Received: (qmail 22062 invoked by uid 550); 6 Feb 2023 20:53:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30019 invoked from network); 6 Feb 2023 20:29:57 -0000
Date: Mon, 06 Feb 2023 21:25:28 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: Helmut Grohne <helmut@subdivi.de>
Cc: oss-security@lists.openwall.com
Message-ID: <20230206202528.dwTKc%steffen@sdaoden.eu>
In-Reply-To: <Y9+dfm0bly+DJSJN@alf.mars>
References: <Y91yP6mYIZ+UXmgf@alf.mars>
 <20230203231914.Vs2o_%steffen@sdaoden.eu> <Y9+dfm0bly+DJSJN@alf.mars>
Mail-Followup-To: Helmut Grohne <helmut@subdivi.de>,
 oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-403-gdc9ff6b368
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="=-=WlsME1TAqHolQMl-Cf162AiESuKPohXGyzMO=-="
Subject: Re: [oss-security] sox: patches for old vulnerabilities

--=-=WlsME1TAqHolQMl-Cf162AiESuKPohXGyzMO=-=
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-ID: <20230206202528.ANb37%steffen@sdaoden.eu>

Hello Helmut.

Helmut Grohne wrote in
 <Y9+dfm0bly+DJSJN@alf.mars>:
 |On Sat, Feb 04, 2023 at 12:19:14AM +0100, Steffen Nurpmeso wrote:
 |> But i was only wondering a bit, have you checked against the
 |> [master] branch?  For example
 |
 |I did a (too) rough survey of the upstream repository and (too quickly)
 |concluded that it wouldn't help me with fixing these in Debian, so I
 |worked from Debian's fork. I should have made this more clear.
 |
 |>   02-fix-resource-leak-hcom.patch
 |
 |Still needed in git.
 |
 |>   03-fix-regression-in-CVE-2017-11358.patch
 |
 |I'll be replacing the Debian-specific, broken fix of CVE-2017-11358 with
 |the one committed upstream. Thanks.
 |
 |>   04-fix-hcom-big-endian.patch#
 |
 |Indeed, I should have revisited the upstream tree. Upstream also fixes a
 |double free and I'll be replacing my patch with the upstream one.
 |
 |>   06-CVE-2021-33844.patch
 |
 |The code is refactored, but I think the issue persists in wav_read_fmt
 |where wav->bitsPerSample isn't checked.
 |
 |> and
 |>   07-CVE-2021-3643.patch
 |
 |The hunk context changed and channels are now verified, but the size
 |validation is still missing. During further analysis I also found that
 |my patch is insufficient still.
 |
 |If uc becomes 1, we assign it to v->size, later we pass 6 - v->size as
 |the second parameter to lsx_adpcm_init, which is used as an index into a
 |static array of 5 elements. We thus have an out-of-bounds read access
 |here. I don't yet know where exactly the check belongs as v->size == 1
 |may be valid in some contexts still.
 |
 |Updated patch attached.
 ...
 |> (I an maintaining an official contrib now private sox port for
 |> CRUX Linux based upon 42b3557e13e0fe0 as of 20211029.)
 |
 |I think it would be good to have a maintained upstream repository of sox
 |eventually. It seems like multiple distributions are maintaining
 |diverging patch piles now.

Would be very nice, i use it almost daily for over twenty years.
(But .. mostly for playing sounds, i am not a sophisticated sound
engineer etc etc.)

Wonderful, thank you very much for the additional work, i first
thought hcom would now miss the INT32 max check, but that was also
upstream.  (Thanks, i really have _zero_ idea of the code.)

I hope it is ok, i still port [master], but now with the
additional patch as attached, that has your name on it.

Ciao!

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)

--=-=WlsME1TAqHolQMl-Cf162AiESuKPohXGyzMO=-=
Content-Type: text/x-diff; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment; filename="grohne-sox.patch"
Content-ID: <20230206202528.EjUcw%steffen@sdaoden.eu>

=46rom c80a378bb275e9ce9dc9a030c7b6ae74f6097f78 Mon Sep 17 00:00:00 2001
Message-Id: <c80a378bb275e9ce9dc9a030c7b6ae74f6097f78.1675714290.git.steffe=
n@sdaoden.eu>
From: Helmut Grohne <helmut@subdivi.de>
Date: Mon, 6 Feb 2023 21:10:56 +0100
Subject: [PATCH] Add fixes (as of oss-security@)

---
 src/aiff.c      |  5 +++++
 src/formats.c   |  1 +
 src/formats_i.c | 20 ++++++++++++++++----
 src/hcom.c      | 18 +++++++++++++++---
 src/sphere.c    |  6 ++++--
 src/voc.c       |  4 ++++
 src/wav.c       |  6 ++++++
 7 files changed, 51 insertions(+), 9 deletions(-)

diff --git a/src/aiff.c b/src/aiff.c
index 3a152c588c..6de94f3276 100644
--- a/src/aiff.c
+++ b/src/aiff.c
@@ -619,6 +619,11 @@ int lsx_aiffstartwrite(sox_format_t * ft)
            At 48 kHz, 16 bits stereo, this gives ~3 hours of audio.
            Sorry, the AIFF format does not provide for an indefinite
            number of samples. */
+        if (ft->signal.channels >=3D (0x7f000000 / (ft->encoding.bits_per_=
sample >> 3)))
+        {
+                lsx_fail_errno(ft, SOX_EOF, "too many channels for AIFF he=
ader");
+                return SOX_EOF;
+        }
         return(aiffwriteheader(ft, (uint64_t) 0x7f000000 / ((ft->encoding.=
bits_per_sample>>3)*ft->signal.channels)));
 }
=20
diff --git a/src/formats.c b/src/formats.c
index 3fcf4382b6..5eda5e3612 100644
--- a/src/formats.c
+++ b/src/formats.c
@@ -627,6 +627,7 @@ error:
   free(ft->priv);
   free(ft->filename);
   free(ft->filetype);
+  sox_delete_comments(&ft->oob.comments);
   free(ft);
   return NULL;
 }
diff --git a/src/formats_i.c b/src/formats_i.c
index 7048040d1c..5f5ef979d4 100644
--- a/src/formats_i.c
+++ b/src/formats_i.c
@@ -19,6 +19,7 @@
  */
=20
 #include "sox_i.h"
+#include <limits.h>
 #include <string.h>
 #include <sys/stat.h>
 #include <stdarg.h>
@@ -60,13 +61,24 @@ int lsx_check_read_params(sox_format_t * ft, unsigned c=
hannels,
   if (ft->seekable)
     ft->data_start =3D lsx_tell(ft);
=20
-  if (channels && ft->signal.channels && ft->signal.channels !=3D channels)
+  if (channels && ft->signal.channels && ft->signal.channels !=3D channels=
) {
     lsx_warn("`%s': overriding number of channels", ft->filename);
-  else ft->signal.channels =3D channels;
+  } else if (channels > SHRT_MAX) {
+    lsx_fail_errno(ft, EINVAL, "implausibly large number of channels");
+    return SOX_EOF;
+  } else {
+    ft->signal.channels =3D channels;
+  }
=20
-  if (rate && ft->signal.rate && ft->signal.rate !=3D rate)
+  if (rate && ft->signal.rate && ft->signal.rate !=3D rate) {
     lsx_warn("`%s': overriding sample rate", ft->filename);
-  else ft->signal.rate =3D rate;
+  /* Since NaN comparisons yield false, the negation rejects them. */
+  } else if (!(rate > 0)) {
+    lsx_fail_errno(ft, EINVAL, "invalid rate value");
+    return SOX_EOF;
+  } else {
+    ft->signal.rate =3D rate;
+  }
=20
   if (encoding && ft->encoding.encoding && ft->encoding.encoding !=3D enco=
ding)
     lsx_warn("`%s': overriding encoding type", ft->filename);
diff --git a/src/hcom.c b/src/hcom.c
index 594c870606..94ed3dbdb0 100644
--- a/src/hcom.c
+++ b/src/hcom.c
@@ -141,6 +141,11 @@ static int startread(sox_format_t * ft)
                 return (SOX_EOF);
         }
         lsx_readw(ft, &dictsize);
+        if (dictsize =3D=3D 0 || dictsize > 511)
+        {
+                lsx_fail_errno(ft, SOX_EHDR, "Implausible dictionary size =
in HCOM header");
+                return SOX_EOF;
+        }
=20
         /* Translate to sox parameters */
         ft->encoding.encoding =3D SOX_ENCODING_HCOM;
@@ -161,13 +166,18 @@ static int startread(sox_format_t * ft)
                        p->dictionary[i].dict_rightson);
                 if (!dictvalid(i, dictsize, p->dictionary[i].dict_leftson,
                                p->dictionary[i].dict_rightson)) {
+                        free(p->dictionary);
+                        p->dictionary =3D NULL;
                         lsx_fail_errno(ft, SOX_EHDR, "Invalid dictionary");
                         return SOX_EOF;
                 }
         }
         rc =3D lsx_skipbytes(ft, (size_t) 1); /* skip pad byte */
-        if (rc)
+        if (rc) {
+            free(p->dictionary);
+            p->dictionary =3D NULL;
             return rc;
+        }
=20
         /* Initialized the decompression engine */
         p->checksum =3D checksum;
@@ -249,6 +259,9 @@ static int stopread(sox_format_t * ft)
 {
         register priv_t *p =3D (priv_t *) ft->priv;
=20
+        free(p->dictionary);
+        p->dictionary =3D NULL;
+
         if (p->huffcount !=3D 0)
         {
                 lsx_fail_errno(ft,SOX_EFMT,"not all HCOM data read");
@@ -259,8 +272,7 @@ static int stopread(sox_format_t * ft)
                 lsx_fail_errno(ft,SOX_EFMT,"checksum error in HCOM data");
                 return (SOX_EOF);
         }
-        free(p->dictionary);
-        p->dictionary =3D NULL;
+
         return (SOX_SUCCESS);
 }
=20
diff --git a/src/sphere.c b/src/sphere.c
index a3fd1c64c2..9544d16000 100644
--- a/src/sphere.c
+++ b/src/sphere.c
@@ -63,7 +63,8 @@ static int start_read(sox_format_t * ft)
     return (SOX_EOF);
   }
=20
-  header_size -=3D (strlen(buf) + 1);
+  bytes_read =3D strlen(buf);
+  header_size -=3D bytes_read >=3D header_size ? header_size : bytes_read =
+ 1;
=20
   while (strncmp(buf, "end_head", (size_t)8) !=3D 0) {
     if (strncmp(buf, "sample_n_bytes", (size_t)14) =3D=3D 0)
@@ -105,7 +106,8 @@ static int start_read(sox_format_t * ft)
       return (SOX_EOF);
     }
=20
-    header_size -=3D (strlen(buf) + 1);
+    bytes_read =3D strlen(buf);
+    header_size -=3D bytes_read >=3D header_size ? header_size : bytes_rea=
d + 1;
   }
=20
   if (!bytes_per_sample)
diff --git a/src/voc.c b/src/voc.c
index a75639e94e..0ca07f9450 100644
--- a/src/voc.c
+++ b/src/voc.c
@@ -625,6 +625,10 @@ static int getblock(sox_format_t * ft)
         v->rate =3D new_rate_32;
         ft->signal.rate =3D new_rate_32;
         lsx_readb(ft, &uc);
+        if (uc <=3D 1) {
+          lsx_fail_errno(ft, SOX_EFMT, "2 bits per word required");
+          return (SOX_EOF);
+        }
         v->size =3D uc;
         lsx_readb(ft, &uc);
         if (v->channels !=3D -1 && uc !=3D v->channels) {
diff --git a/src/wav.c b/src/wav.c
index 3f6beb4517..39e0c487e8 100644
--- a/src/wav.c
+++ b/src/wav.c
@@ -654,6 +654,12 @@ static int wav_read_fmt(sox_format_t *ft, uint32_t len)
     if (err)
         return SOX_EOF;
=20
+    if (wav->bitsPerSample =3D=3D 0)
+    {
+        lsx_fail_errno(ft, SOX_EHDR, "WAV file bits per sample is zero");
+        return SOX_EOF;
+    }
+
     /* non-PCM formats except alaw and mulaw formats have extended fmt chu=
nk.
      * Check for those cases.
      */
--=20
2.39.1


--=-=WlsME1TAqHolQMl-Cf162AiESuKPohXGyzMO=-=--
