Received: (qmail 13336 invoked by uid 550); 30 Mar 2023 21:15:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25872 invoked from network); 30 Mar 2023 20:43:12 -0000
Date: Thu, 30 Mar 2023 22:43:00 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20230330204300.jYitb%steffen@sdaoden.eu>
In-Reply-To: <20230314201652.RlbWr%steffen@sdaoden.eu>
References: <Y91yP6mYIZ+UXmgf@alf.mars> <20230314110138.GA1192267@subdivi.de>
 <20230314191132.qDz3u%steffen@sdaoden.eu>
 <20230314201652.RlbWr%steffen@sdaoden.eu>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-440-gf136fe83f1
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="=-=kF_AzmFDj152avd3XCyaoRjM_c7nS9MZY0Fc=-="
Subject: Re: [oss-security] Re: sox: patches for old vulnerabilities

--=-=kF_AzmFDj152avd3XCyaoRjM_c7nS9MZY0Fc=-=
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-ID: <20230330204300.jCr84%steffen@sdaoden.eu>

Steffen Nurpmeso wrote in
 <20230314201652.RlbWr%steffen@sdaoden.eu>:
 ...
 ||Helmut Grohne wrote in
 || <20230314110138.GA1192267@subdivi.de>:
 |||On Fri, Feb 03, 2023 at 09:44:47PM +0100, Helmut Grohne wrote:
 |||>  * CVE-2021-33844
 |||
 |||The original fix for this issue would cause a regression. After applying
 |||it, sox would be unable to decode WAV GSM files. This has been reported
 ...

Today i got a nice email from Nam Nguyen who pointed out that my
last patch to this topic (also) introduced a bug.  So i downloaded
libGSM and yes he was right.  So on top of them all a partial undo
of the last is necessary; i will attach the full diff, too.

Thank you Nam Nguyen!
Ciao already here,

    wav_read_fmt(): fix previous! (Nam Nguyen (namn AT berkeley DOT edu))
---
 src/wav.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/src/wav.c b/src/wav.c
index 380796c0f0..b93ee37667 100644
--- a/src/wav.c
+++ b/src/wav.c
@@ -654,11 +654,7 @@ static int wav_read_fmt(sox_format_t *ft, uint32_t len)
     if (err)
         return SOX_EOF;
 
-    if (wav->bitsPerSample == 0
-#ifdef HAVE_LIBGSM
-            && wav->formatTag != WAVE_FORMAT_GSM610
-#endif
-    ){
+    if (wav->bitsPerSample == 0){
         lsx_fail_errno(ft, SOX_EHDR, "WAV file bits per sample is zero");
         return SOX_EOF;
     }


--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)

--=-=kF_AzmFDj152avd3XCyaoRjM_c7nS9MZY0Fc=-=
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="sox-git.patch"
Content-ID: <20230330204300.XFojk%steffen@sdaoden.eu>

diff --git a/src/aiff.c b/src/aiff.c
index 3a152c588c..6de94f3276 100644
--- a/src/aiff.c
+++ b/src/aiff.c
@@ -619,6 +619,11 @@ int lsx_aiffstartwrite(sox_format_t * ft)
            At 48 kHz, 16 bits stereo, this gives ~3 hours of audio.
            Sorry, the AIFF format does not provide for an indefinite
            number of samples. */
+        if (ft->signal.channels >= (0x7f000000 / (ft->encoding.bits_per_sample >> 3)))
+        {
+                lsx_fail_errno(ft, SOX_EOF, "too many channels for AIFF header");
+                return SOX_EOF;
+        }
         return(aiffwriteheader(ft, (uint64_t) 0x7f000000 / ((ft->encoding.bits_per_sample>>3)*ft->signal.channels)));
 }
 
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
 
 #include "sox_i.h"
+#include <limits.h>
 #include <string.h>
 #include <sys/stat.h>
 #include <stdarg.h>
@@ -60,13 +61,24 @@ int lsx_check_read_params(sox_format_t * ft, unsigned channels,
   if (ft->seekable)
     ft->data_start = lsx_tell(ft);
 
-  if (channels && ft->signal.channels && ft->signal.channels != channels)
+  if (channels && ft->signal.channels && ft->signal.channels != channels) {
     lsx_warn("`%s': overriding number of channels", ft->filename);
-  else ft->signal.channels = channels;
+  } else if (channels > SHRT_MAX) {
+    lsx_fail_errno(ft, EINVAL, "implausibly large number of channels");
+    return SOX_EOF;
+  } else {
+    ft->signal.channels = channels;
+  }
 
-  if (rate && ft->signal.rate && ft->signal.rate != rate)
+  if (rate && ft->signal.rate && ft->signal.rate != rate) {
     lsx_warn("`%s': overriding sample rate", ft->filename);
-  else ft->signal.rate = rate;
+  /* Since NaN comparisons yield false, the negation rejects them. */
+  } else if (!(rate > 0)) {
+    lsx_fail_errno(ft, EINVAL, "invalid rate value");
+    return SOX_EOF;
+  } else {
+    ft->signal.rate = rate;
+  }
 
   if (encoding && ft->encoding.encoding && ft->encoding.encoding != encoding)
     lsx_warn("`%s': overriding encoding type", ft->filename);
diff --git a/src/hcom.c b/src/hcom.c
index 594c870606..94ed3dbdb0 100644
--- a/src/hcom.c
+++ b/src/hcom.c
@@ -141,6 +141,11 @@ static int startread(sox_format_t * ft)
                 return (SOX_EOF);
         }
         lsx_readw(ft, &dictsize);
+        if (dictsize == 0 || dictsize > 511)
+        {
+                lsx_fail_errno(ft, SOX_EHDR, "Implausible dictionary size in HCOM header");
+                return SOX_EOF;
+        }
 
         /* Translate to sox parameters */
         ft->encoding.encoding = SOX_ENCODING_HCOM;
@@ -161,13 +166,18 @@ static int startread(sox_format_t * ft)
                        p->dictionary[i].dict_rightson);
                 if (!dictvalid(i, dictsize, p->dictionary[i].dict_leftson,
                                p->dictionary[i].dict_rightson)) {
+                        free(p->dictionary);
+                        p->dictionary = NULL;
                         lsx_fail_errno(ft, SOX_EHDR, "Invalid dictionary");
                         return SOX_EOF;
                 }
         }
         rc = lsx_skipbytes(ft, (size_t) 1); /* skip pad byte */
-        if (rc)
+        if (rc) {
+            free(p->dictionary);
+            p->dictionary = NULL;
             return rc;
+        }
 
         /* Initialized the decompression engine */
         p->checksum = checksum;
@@ -249,6 +259,9 @@ static int stopread(sox_format_t * ft)
 {
         register priv_t *p = (priv_t *) ft->priv;
 
+        free(p->dictionary);
+        p->dictionary = NULL;
+
         if (p->huffcount != 0)
         {
                 lsx_fail_errno(ft,SOX_EFMT,"not all HCOM data read");
@@ -259,8 +272,7 @@ static int stopread(sox_format_t * ft)
                 lsx_fail_errno(ft,SOX_EFMT,"checksum error in HCOM data");
                 return (SOX_EOF);
         }
-        free(p->dictionary);
-        p->dictionary = NULL;
+
         return (SOX_SUCCESS);
 }
 
diff --git a/src/sphere.c b/src/sphere.c
index a3fd1c64c2..9544d16000 100644
--- a/src/sphere.c
+++ b/src/sphere.c
@@ -63,7 +63,8 @@ static int start_read(sox_format_t * ft)
     return (SOX_EOF);
   }
 
-  header_size -= (strlen(buf) + 1);
+  bytes_read = strlen(buf);
+  header_size -= bytes_read >= header_size ? header_size : bytes_read + 1;
 
   while (strncmp(buf, "end_head", (size_t)8) != 0) {
     if (strncmp(buf, "sample_n_bytes", (size_t)14) == 0)
@@ -105,7 +106,8 @@ static int start_read(sox_format_t * ft)
       return (SOX_EOF);
     }
 
-    header_size -= (strlen(buf) + 1);
+    bytes_read = strlen(buf);
+    header_size -= bytes_read >= header_size ? header_size : bytes_read + 1;
   }
 
   if (!bytes_per_sample)
diff --git a/src/voc.c b/src/voc.c
index a75639e94e..0ca07f9450 100644
--- a/src/voc.c
+++ b/src/voc.c
@@ -625,6 +625,10 @@ static int getblock(sox_format_t * ft)
         v->rate = new_rate_32;
         ft->signal.rate = new_rate_32;
         lsx_readb(ft, &uc);
+        if (uc <= 1) {
+          lsx_fail_errno(ft, SOX_EFMT, "2 bits per word required");
+          return (SOX_EOF);
+        }
         v->size = uc;
         lsx_readb(ft, &uc);
         if (v->channels != -1 && uc != v->channels) {
diff --git a/src/wav.c b/src/wav.c
index 3f6beb4517..b93ee37667 100644
--- a/src/wav.c
+++ b/src/wav.c
@@ -654,6 +654,11 @@ static int wav_read_fmt(sox_format_t *ft, uint32_t len)
     if (err)
         return SOX_EOF;
 
+    if (wav->bitsPerSample == 0){
+        lsx_fail_errno(ft, SOX_EHDR, "WAV file bits per sample is zero");
+        return SOX_EOF;
+    }
+
     /* non-PCM formats except alaw and mulaw formats have extended fmt chunk.
      * Check for those cases.
      */
@@ -1348,8 +1353,10 @@ static int wavwritehdr(sox_format_t * ft, int second_header)
         (dwSamplesWritten + wSamplesPerBlock - 1) / wSamplesPerBlock;
     dwDataLength = blocksWritten * wBlockAlign;
 
+#ifdef HAVE_LIBGSM
     if (wFormatTag == WAVE_FORMAT_GSM610)
         dwDataLength = (dwDataLength+1) & ~1u; /* round up to even */
+#endif
 
     if (wFormatTag == WAVE_FORMAT_PCM && (wBitsPerSample > 16 || wChannels > 2)
         && strcmp(ft->filetype, "wavpcm")) {
@@ -1444,9 +1451,11 @@ static int wavwritehdr(sox_format_t * ft, int second_header)
             lsx_writew(ft, (uint16_t)(lsx_ms_adpcm_i_coef[i][1]));
         }
         break;
+#ifdef HAVE_LIBGSM
         case WAVE_FORMAT_GSM610:
         lsx_writew(ft, wSamplesPerBlock);
         break;
+#endif
         default:
         break;
     }
@@ -1554,7 +1563,9 @@ static int stopwrite(sox_format_t * ft)
 
         /* Add a pad byte if the number of data bytes is odd.
            See wavwritehdr() above for the calculation. */
+#ifdef HAVE_LIBGSM
         if (wav->formatTag != WAVE_FORMAT_GSM610)
+#endif
           lsx_padbytes(ft, (size_t)((wav->numSamples + wav->samplesPerBlock - 1)/wav->samplesPerBlock*wav->blockAlign) % 2);
 
         free(wav->packet);
@@ -1594,6 +1605,7 @@ static int seek(sox_format_t * ft, uint64_t offset)
 
   if (ft->encoding.bits_per_sample & 7)
     lsx_fail_errno(ft, SOX_ENOTSUP, "seeking not supported with this encoding");
+#ifdef HAVE_LIBGSM
   else if (wav->formatTag == WAVE_FORMAT_GSM610) {
     int alignment;
     size_t gsmoff;
@@ -1613,7 +1625,9 @@ static int seek(sox_format_t * ft, uint64_t offset)
           new_offset += (wav->samplesPerBlock - alignment);
       wav->numSamples = ft->signal.length - (new_offset / ft->signal.channels);
     }
-  } else {
+  }
+#endif /* HAVE_LIBGSM */
+  else {
     double wide_sample = offset - (offset % ft->signal.channels);
     double to_d = wide_sample * ft->encoding.bits_per_sample / 8;
     off_t to = to_d;

--=-=kF_AzmFDj152avd3XCyaoRjM_c7nS9MZY0Fc=-=--
