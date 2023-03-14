Received: (qmail 10003 invoked by uid 550); 14 Mar 2023 20:19:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8167 invoked from network); 14 Mar 2023 20:17:04 -0000
Date: Tue, 14 Mar 2023 21:16:52 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: Helmut Grohne <helmut@subdivi.de>
Cc: oss-security@lists.openwall.com
Message-ID: <20230314201652.RlbWr%steffen@sdaoden.eu>
In-Reply-To: <20230314191132.qDz3u%steffen@sdaoden.eu>
References: <Y91yP6mYIZ+UXmgf@alf.mars> <20230314110138.GA1192267@subdivi.de>
 <20230314191132.qDz3u%steffen@sdaoden.eu>
Mail-Followup-To: Helmut Grohne <helmut@subdivi.de>,
 oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-438-g5e0fdbd9f9
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="=-=h7qpTD7T6GFWkLifFXAkV-o56TIE2fuKvDD_=-="
Subject: Re: [oss-security] Re: sox: patches for old vulnerabilities

--=-=h7qpTD7T6GFWkLifFXAkV-o56TIE2fuKvDD_=-=
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-ID: <20230314201652.NaPry%steffen@sdaoden.eu>

Hello Helmut, list, and special greetings to the happy moderator,

Steffen Nurpmeso wrote in
 <20230314191132.qDz3u%steffen@sdaoden.eu>:
 ...
 |Helmut Grohne wrote in
 | <20230314110138.GA1192267@subdivi.de>:
 ||On Fri, Feb 03, 2023 at 09:44:47PM +0100, Helmut Grohne wrote:
 ||>  * CVE-2021-33844
 ||
 ||The original fix for this issue would cause a regression. After applying
 ||it, sox would be unable to decode WAV GSM files. This has been reported
 ...
 |You have chosen not to update to latest possible git(?).
 ...
 ||From: Helmut Grohne <helmut@subdivi.de>
 ||Subject: wav: reject 0 bits per sample to avoid division by zero
 ||Bug: https://sourceforge.net/p/sox/bugs/349/
 ||Bug-Debian: https://bugs.debian.org/1021135
 | ...
 ||--- a/src/wav.c
 ||+++ b/src/wav.c
 ...

So then my take for the git variant would be as attached.
It compiles, but no GSM here.
(It seems our dear sox developer was out of dynamic tension when
he did that, overall.)

Ciao,

P.S.: on OpenBSD they committed additional code hunks; i still
have not looked into this, but have it on that stairway to over
the clowds to work through.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)

--=-=h7qpTD7T6GFWkLifFXAkV-o56TIE2fuKvDD_=-=
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="sox-git.patch"
Content-ID: <20230314201652.R6SUn%steffen@sdaoden.eu>

diff --git a/src/wav.c b/src/wav.c
index eb2ba03962..380796c0f0 100644
--- a/src/wav.c
+++ b/src/wav.c
@@ -654,8 +654,11 @@ static int wav_read_fmt(sox_format_t *ft, uint32_t len)
     if (err)
         return SOX_EOF;
 
-    if (wav->bitsPerSample == 0)
-    {
+    if (wav->bitsPerSample == 0
+#ifdef HAVE_LIBGSM
+            && wav->formatTag != WAVE_FORMAT_GSM610
+#endif
+    ){
         lsx_fail_errno(ft, SOX_EHDR, "WAV file bits per sample is zero");
         return SOX_EOF;
     }
@@ -1354,8 +1357,10 @@ static int wavwritehdr(sox_format_t * ft, int second_header)
         (dwSamplesWritten + wSamplesPerBlock - 1) / wSamplesPerBlock;
     dwDataLength = blocksWritten * wBlockAlign;
 
+#ifdef HAVE_LIBGSM
     if (wFormatTag == WAVE_FORMAT_GSM610)
         dwDataLength = (dwDataLength+1) & ~1u; /* round up to even */
+#endif
 
     if (wFormatTag == WAVE_FORMAT_PCM && (wBitsPerSample > 16 || wChannels > 2)
         && strcmp(ft->filetype, "wavpcm")) {
@@ -1450,9 +1455,11 @@ static int wavwritehdr(sox_format_t * ft, int second_header)
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
@@ -1560,7 +1567,9 @@ static int stopwrite(sox_format_t * ft)
 
         /* Add a pad byte if the number of data bytes is odd.
            See wavwritehdr() above for the calculation. */
+#ifdef HAVE_LIBGSM
         if (wav->formatTag != WAVE_FORMAT_GSM610)
+#endif
           lsx_padbytes(ft, (size_t)((wav->numSamples + wav->samplesPerBlock - 1)/wav->samplesPerBlock*wav->blockAlign) % 2);
 
         free(wav->packet);
@@ -1600,6 +1609,7 @@ static int seek(sox_format_t * ft, uint64_t offset)
 
   if (ft->encoding.bits_per_sample & 7)
     lsx_fail_errno(ft, SOX_ENOTSUP, "seeking not supported with this encoding");
+#ifdef HAVE_LIBGSM
   else if (wav->formatTag == WAVE_FORMAT_GSM610) {
     int alignment;
     size_t gsmoff;
@@ -1619,7 +1629,9 @@ static int seek(sox_format_t * ft, uint64_t offset)
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

--=-=h7qpTD7T6GFWkLifFXAkV-o56TIE2fuKvDD_=-=--
