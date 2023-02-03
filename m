Received: (qmail 10043 invoked by uid 550); 3 Feb 2023 21:34:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11578 invoked from network); 3 Feb 2023 20:45:52 -0000
Date: Fri, 3 Feb 2023 21:44:47 +0100
From: Helmut Grohne <helmut@subdivi.de>
To: oss-security@lists.openwall.com
Message-ID: <Y91yP6mYIZ+UXmgf@alf.mars>
Mail-Followup-To: Helmut Grohne <helmut@subdivi.de>,
	oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nvW8mNFZ0q4C9JJR"
Content-Disposition: inline
Subject: [oss-security] sox: patches for old vulnerabilities

--nvW8mNFZ0q4C9JJR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I am working on fixing known vulnerabilities in sox and since upstream
seems mostly dead (no commits in more than a year, no replies to bug
reports), I am posting my results here. My work on sox is compensated by
Freexian SARL.

I located two distinct memory leaks.

The fix for CVE-2017-11358 introduced a regression. Reading any hcom
file would result in an error. This made the test suite fail, but since
nobody seems to run the test suite, this ended up being shipped in e.g.
multiple Debian releases.

On 64bit big endian systems, a 64bit integer is incorrectly truncated to
the upper 32bits. This subsequently causes an assertion failure or a
stack overflow in a -DNDEBUG build. This issue also breaks the test
suite. I do not think that this is exploitable and do not intend to
request a CVE.

I'm attaching patches for these as well as patches for the following
vulnerabilities:
 * CVE-2021-3643 and CVE-2021-23210
 * CVE-2021-23159 and CVE-2021-23172
 * CVE-2021-33844
 * CVE-2021-40426
 * CVE-2022-31650
 * CVE-2022-31651

I welcome reviews and propose adding these patches to distributions that
ship sox. I will upload these patches to Debian.

Please Cc me in replies.

Helmut

--nvW8mNFZ0q4C9JJR
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="fix-resource-leak-comments.patch"

From: Helmut Grohne <helmut@subdivi.de>
Subject: fix a resource leak of comments on input parsing failure

--- a/src/formats.c
+++ b/src/formats.c
@@ -572,6 +572,7 @@ error:
   free(ft->priv);
   free(ft->filename);
   free(ft->filetype);
+  sox_delete_comments(&ft->oob.comments);
   free(ft);
   return NULL;
 }

--nvW8mNFZ0q4C9JJR
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="fix-resource-leak-hcom.patch"

From: Helmut Grohne <helmut@subdivi.de>
Subject: hcom: fix dictionary resource leaks

startread and stopread should release p->dictionary in all failure modes.

--- a/src/hcom.c
+++ b/src/hcom.c
@@ -152,13 +152,18 @@
                        p->dictionary[i].dict_rightson);
                 if ((unsigned) p->dictionary[i].dict_leftson >= dictsize ||
                     (unsigned) p->dictionary[i].dict_rightson >= dictsize) {
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
+	}
 
         /* Initialized the decompression engine */
         p->checksum = checksum;
@@ -240,6 +245,8 @@
 {
         register priv_t *p = (priv_t *) ft->priv;
 
+        free(p->dictionary);
+        p->dictionary = NULL;
         if (p->huffcount != 0)
         {
                 lsx_fail_errno(ft,SOX_EFMT,"not all HCOM data read");
@@ -250,8 +257,6 @@
                 lsx_fail_errno(ft,SOX_EFMT,"checksum error in HCOM data");
                 return (SOX_EOF);
         }
-        free(p->dictionary);
-        p->dictionary = NULL;
         return (SOX_SUCCESS);
 }
 

--nvW8mNFZ0q4C9JJR
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="fix-regression-in-CVE-2017-11358.patch"

From: Helmut Grohne <helmut@subdivi.de>
Subject: hcom: fix parsing of valid huffman dictionaries
Bug-Debian: https://bugs.debian.org/933372

This is a regression update for the fix applied for CVE-2017-11358.

--- a/src/hcom.c
+++ b/src/hcom.c
@@ -150,11 +150,24 @@
                 lsx_debug("%d %d",
                        p->dictionary[i].dict_leftson,
                        p->dictionary[i].dict_rightson);
-                if ((unsigned) p->dictionary[i].dict_leftson >= dictsize ||
-                    (unsigned) p->dictionary[i].dict_rightson >= dictsize) {
+                if (p->dictionary[i].dict_leftson < 0) {
+                        if (i == 0) {
+                                free(p->dictionary);
+                                p->dictionary = NULL;
+                                lsx_fail_errno(ft, SOX_EHDR, "Invalid dictionary: root node is leaf");
+                                return SOX_EOF;
+                        }
+                        if ((unsigned)p->dictionary[i].dict_rightson > 0xff) {
+                                free(p->dictionary);
+                                p->dictionary = NULL;
+                                lsx_fail_errno(ft, SOX_EHDR, "Invalid dictionary: invalid leaf value");
+                                return SOX_EOF;
+                        }
+                } else if ((unsigned) p->dictionary[i].dict_leftson >= dictsize ||
+                           (unsigned) p->dictionary[i].dict_rightson >= dictsize) {
                         free(p->dictionary);
                         p->dictionary = NULL;
-                        lsx_fail_errno(ft, SOX_EHDR, "Invalid dictionary");
+                        lsx_fail_errno(ft, SOX_EHDR, "Invalid dictionary: invalid branch node");
                         return SOX_EOF;
                 }
         }

--nvW8mNFZ0q4C9JJR
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="fix-hcom-big-endian.patch"

From: Helmut Grohne <helmut@subdivi.de>
Subject: hcom: fix writing on big endian 64bit architectures

On 64bit architectures, size_t is 64bit and casting a size_t pointer to an
int32_t pointer will yield the upper 32 bits, which are usually zero entirely.

--- a/src/hcom.c
+++ b/src/hcom.c
@@ -23,6 +23,7 @@
 #include "sox_i.h"
 #include <assert.h>
 #include <string.h>
+#include <stdint.h>
 #include <stdlib.h>
 #include <errno.h>
 
@@ -451,12 +452,19 @@
 {
   priv_t *p = (priv_t *) ft->priv;
   unsigned char *compressed_data = p->data;
-  size_t compressed_len = p->pos;
+  int32_t compressed_len;
   int rc = SOX_SUCCESS;
 
+  if (p->pos > INT32_MAX) {
+    free(p->data);
+    lsx_fail_errno(ft, ERANGE, "file too large for HCOM header");
+    return SOX_EOF;
+  }
+  compressed_len = p->pos;
+
   /* Compress it all at once */
   if (compressed_len)
-    compress(ft, &compressed_data, (int32_t *)&compressed_len);
+    compress(ft, &compressed_data, &compressed_len);
   free(p->data);
 
   /* Write the header */

--nvW8mNFZ0q4C9JJR
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2021-23159.patch"

From: Helmut Grohne <helmut@subdivi.de>
Subject: hcom: validate dictsize
Bug: https://sourceforge.net/p/sox/bugs/350/
Bug: https://sourceforge.net/p/sox/bugs/352/
Bug-Debian: https://bugs.debian.org/1021133
Bug-Debian: https://bugs.debian.org/1021134

This patch fixes both CVE-2021-23159 and CVE-2021-23172.

--- a/src/hcom.c
+++ b/src/hcom.c
@@ -134,6 +134,11 @@
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

--nvW8mNFZ0q4C9JJR
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2021-33844.patch"

From: Helmut Grohne <helmut@subdivi.de>
Subject: wav: reject 0 bits per sample to avoid division by zero
Bug: https://sourceforge.net/p/sox/bugs/349/
Bug-Debian: https://bugs.debian.org/1021135

--- a/src/wav.c
+++ b/src/wav.c
@@ -506,7 +506,7 @@
     unsigned short wChannels;       /* number of channels */
     uint32_t      dwSamplesPerSecond; /* samples per second per channel */
     uint32_t      dwAvgBytesPerSec;/* estimate of bytes per second needed */
-    uint16_t wBitsPerSample;  /* bits per sample */
+    uint16_t wBitsPerSample = 0;  /* bits per sample */
     uint32_t wFmtSize;
     uint16_t wExtSize = 0;    /* extended field for non-PCM */
 
@@ -587,6 +587,11 @@
     lsx_readdw(ft, &dwAvgBytesPerSec);   /* Average bytes/second */
     lsx_readw(ft, &(wav->blockAlign));   /* Block align */
     lsx_readw(ft, &wBitsPerSample);      /* bits per sample per channel */
+    if (wBitsPerSample == 0)
+    {
+        lsx_fail_errno(ft, SOX_EHDR, "WAV file bits per sample is zero");
+        return SOX_EOF;
+    }
     len -= 16;
 
     if (wav->formatTag == WAVE_FORMAT_EXTENSIBLE)

--nvW8mNFZ0q4C9JJR
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2021-3643.patch"

From: Helmut Grohne <helmut@subdivi.de>
Subject: voc: word width should never be 0 to avoid division by zero
Bug: https://sourceforge.net/p/sox/bugs/351/
Bug-Debian: https://bugs.debian.org/1010374

This patch fixes both CVE-2021-3643 and CVE-2021-23210.

--- a/src/voc.c
+++ b/src/voc.c
@@ -614,6 +614,10 @@
         v->rate = new_rate_32;
         ft->signal.rate = new_rate_32;
         lsx_readb(ft, &uc);
+        if (uc == 0) {
+          lsx_fail_errno(ft, SOX_EFMT, "word width is zero?");
+	  return (SOX_EOF);
+	}
         v->size = uc;
         lsx_readb(ft, &(v->channels));
         lsx_readw(ft, &(v->format));    /* ANN: added format */

--nvW8mNFZ0q4C9JJR
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2021-40426.patch"

From: Helmut Grohne <helmut@subdivi.de>
Subject: sphere: avoid integer underflow
Link: https://talosintelligence.com/vulnerability_reports/TALOS-2021-1434
Bug: https://sourceforge.net/p/sox/bugs/362/
Bug-Debian: https://bugs.debian.org/1012138

--- a/src/sphere.c
+++ b/src/sphere.c
@@ -63,7 +63,8 @@
     return (SOX_EOF);
   }
 
-  header_size -= (strlen(buf) + 1);
+  bytes_read = strlen(buf);
+  header_size -= bytes_read >= header_size ? header_size : bytes_read + 1;
 
   while (strncmp(buf, "end_head", (size_t)8) != 0) {
     if (strncmp(buf, "sample_n_bytes", (size_t)14) == 0)
@@ -105,7 +106,8 @@
       return (SOX_EOF);
     }
 
-    header_size -= (strlen(buf) + 1);
+    bytes_read = strlen(buf);
+    header_size -= bytes_read >= header_size ? header_size : bytes_read + 1;
   }
 
   if (!bytes_per_sample)

--nvW8mNFZ0q4C9JJR
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2022-31650.patch"

From: Helmut Grohne <helmut@subdivi.de>
Subject: formats+aiff: reject implausibly large number of channels
Bug: https://sourceforge.net/p/sox/bugs/360/
Bug-Debian: https://bugs.debian.org/1012516

--- a/src/formats_i.c
+++ b/src/formats_i.c
@@ -19,6 +19,7 @@
  */
 
 #include "sox_i.h"
+#include <limits.h>
 #include <string.h>
 #include <sys/stat.h>
 #include <stdarg.h>
@@ -60,9 +61,14 @@
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
 
   if (rate && ft->signal.rate && ft->signal.rate != rate)
     lsx_warn("`%s': overriding sample rate", ft->filename);
--- sox-14.4.2+git20190427.orig/src/aiff.c
+++ sox-14.4.2+git20190427/src/aiff.c
@@ -609,6 +609,11 @@
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
 

--nvW8mNFZ0q4C9JJR
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2022-31651.patch"

From: Helmut Grohne <helmut@subdivi.de>
Subject: formats: reject implausible rate
Bug: https://sourceforge.net/p/sox/bugs/360/
Bug-Debian: https://bugs.debian.org/1012516

--- a/src/formats_i.c
+++ b/src/formats_i.c
@@ -70,9 +70,15 @@
     ft->signal.channels = channels;
   }
 
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

--nvW8mNFZ0q4C9JJR--

