Received: (qmail 32379 invoked by uid 550); 31 Mar 2023 12:03:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14316 invoked from network); 30 Mar 2023 23:22:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680218542;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R3Dzyf0Ml56hd9pIdeQ4VxFx8I+uiTW/GAViETHxLR8=;
        b=cNdD4L+fQwcowlLzMyzUJkNYbbsi09jDIFufkmG7BbcDdoKDd1dlHm8oEk9BC6+mbH
         PZ9XdWT3w3qSWhd0H/WHgnYBbKvo/N34taAswpw3AXsmms3PybCm4VLqY2C0cW+Cq9ap
         /Z4mVReYOguhtCeQxMx+IZ/DOgW43cUoKCtb8uhAd+rs5IEkxvlILigMLX5F18wVKFsa
         8U60m8eiQGCwbBt3J2PWQFAVP1Knn5CdTqncedqehSj3jV4Ov6Pq/stVb9XN/9Py7LIQ
         D/7cVltKbPoqDwCeKB1V8vpArH7Tt0XJ2xIZCCKmVLPnw4ZTDPHN6dZaExlNCwqZenxl
         TSTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680218542;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=R3Dzyf0Ml56hd9pIdeQ4VxFx8I+uiTW/GAViETHxLR8=;
        b=2bVqPg2GqreN4ieE0j81H4mTidH6TKeBp2lhEyPOvoQ14Ijk6jVeC1sQx5ffgzxz6y
         2z3I+UbyhN4Ln8bqeZMxEV8yYGijXoluwpYV9WE4J4K8wshwJihJOPrwqZKLF4T2No4D
         AEJlWcTHm2VlEq/4AxDygeZ8Ki8Avi8YBj/XEVjf4JmNlzHe9p3zNIq2/W5Pu1ZWiQpK
         1rWPVW17hHJXuRcyKuIJhJsDcESk6iceMVarns/gvGbtJf9YztwJH3Aoo2vabbWxgZ2b
         Vq6DOzgyKOVT5Wkp8Yq9EF98u9l9R09XC//xrnBKfKtBF9lhzU2fipz6awPtQAH43fRv
         hTQQ==
X-Gm-Message-State: AAQBX9dtpx3HtPt/hps76K2+p5y/40jBgF1bX96bo1GZQr6WDS+qdF3P
	DupF3X3yhfqPbMGNTJDRzfHRKUMyiZ0=
X-Google-Smtp-Source: AKy350bub7D+mFzt+PxbkJa5sfZ5JelaG6nWwRK93AnjqnOoVJETLWnpgEtcDXT93luO0gZuwCiyPg==
X-Received: by 2002:a67:f8d4:0:b0:426:b2d8:17e9 with SMTP id c20-20020a67f8d4000000b00426b2d817e9mr5096205vsp.20.1680218542102;
        Thu, 30 Mar 2023 16:22:22 -0700 (PDT)
Sender: Nam Nguyen <namluunguyen@gmail.com>
From: Nam Nguyen <namn@berkeley.edu>
X-Google-Original-From: Nam Nguyen <n@m>
To: oss-security@lists.openwall.com
Cc: Steffen Nurpmeso <steffen@sdaoden.eu>
References: <Y91yP6mYIZ+UXmgf@alf.mars> <20230314110138.GA1192267@subdivi.de>
	<20230314191132.qDz3u%steffen@sdaoden.eu>
	<20230314201652.RlbWr%steffen@sdaoden.eu>
	<20230330204300.jYitb%steffen@sdaoden.eu>
Date: Thu, 30 Mar 2023 16:22:20 -0700
In-Reply-To: <20230330204300.jYitb%steffen@sdaoden.eu> (Steffen Nurpmeso's
	message of "Thu, 30 Mar 2023 22:43:00 +0200")
Message-ID: <87bkk9hljn.fsf@n.m>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (berkeley-unix)
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Re: sox: patches for old vulnerabilities

Steffen Nurpmeso writes:

> Steffen Nurpmeso wrote in
>  <20230314201652.RlbWr%steffen@sdaoden.eu>:
>  ...
>  ||Helmut Grohne wrote in
>  || <20230314110138.GA1192267@subdivi.de>:
>  |||On Fri, Feb 03, 2023 at 09:44:47PM +0100, Helmut Grohne wrote:
>  |||>  * CVE-2021-33844
>  |||
>  |||The original fix for this issue would cause a regression. After applying
>  |||it, sox would be unable to decode WAV GSM files. This has been reported
>  ...
>
> Today i got a nice email from Nam Nguyen who pointed out that my
> last patch to this topic (also) introduced a bug.  So i downloaded
> libGSM and yes he was right.  So on top of them all a partial undo
> of the last is necessary; i will attach the full diff, too.

I propose keeping that check in order to fix the regression of not
opening wav gsm files.

Steffn Nurpmeso's patch with tweaks can be found inline at the end of
this email. This patch retains the line 654 hunk and adds line 961 hunk
to avoid dividing by 0 for wav gsm files. wav->numSamples is calculated
similarly to debian's version of sox.

Feedback is welcome as I am not familiar with the code base.

debian's sox:
--8<---------------cut here---------------start------------->8---
    943     case WAVE_FORMAT_GSM610:
    944         wav->numSamples = ((qwDataLength / wav->blockAlign) * wav->samplesPerBlock);
    945         wavgsminit(ft);
    946         ft->signal.length = wav->numSamples*ft->signal.channels;
    947         break;
    948
    949     default:
    950         wav->numSamples = div_bits(qwDataLength, ft->encoding.bits_per_sample) / ft->signal.channels;
    951         ft->signal.length = wav->numSamples * ft->signal.channels;
    952     }
--8<---------------cut here---------------end--------------->8---


new 961 hunk:
--8<---------------cut here---------------start------------->8---
    967 #ifdef HAVE_LIBGSM
    968     case WAVE_FORMAT_GSM610:
    969         wav->numSamples = qwDataLength / wav->blockAlign * wav->samplesPerBlock;
    970         wavgsminit(ft);
    971         break;
    972 #endif
    973
    974     }
    975
    976     if ((!wav->numSamples)
    977 #ifdef HAVE_LIBGSM
    978         && wav->formatTag != WAVE_FORMAT_GSM610
    979 #endif
    980     )
    981         wav->numSamples = div_bits(qwDataLength, ft->encoding.bits_per_sample)
    982             / ft->signal.channels;
--8<---------------cut here---------------end--------------->8---
    
Test cases
----------
Test case 1: convert /dev/null to bug.wav (wav gsm) and then convert
bug.wav to fail.wav.

This test case is expected to pass.

failing output:
--8<---------------cut here---------------start------------->8---
$ sox -t raw -r 44100 -e signed-integer -b 8 /dev/null -t wav -e gsm-full-rate bug.wav
$ sox bug.wav fail.wav
sox FAIL formats: can't open input file `bug.wav': WAV file bits per sample is zero
--8<---------------cut here---------------end--------------->8---


correct output (which this provides):
--8<---------------cut here---------------start------------->8---
$ sox -t raw -r 44100 -e signed-integer -b 8 /dev/null -t wav -e gsm-full-rate bug.wav
$ sox bug.wav fail.wav
$ file fail.wav
fail.wav: RIFF (little-endian) data, WAVE audio, GSM 6.10, mono 44100 Hz
--8<---------------cut here---------------end--------------->8---

Test case 2: convert flac to wav gsm. then, convert wav gsm to wav gsm.

This test case is expected to pass.
--8<---------------cut here---------------start------------->8---
$ sox -t flac -r 44100 -e signed-integer -b 16 song.flac -t wav -e gsm-full-rate ok.wav
$ sox ok.wav ok2.wav
--8<---------------cut here---------------end--------------->8---

inline patch
------------

https://marc.info/?l=oss-security&m=167571683504082&w=2

unbreak wav gsm
https://marc.info/?l=oss-security&m=167882517702862&w=2

Index: src/wav.c
--- src/wav.c.orig
+++ src/wav.c
@@ -654,6 +654,15 @@ static int wav_read_fmt(sox_format_t *ft, uint32_t len
     if (err)
         return SOX_EOF;
 
+    if (wav->bitsPerSample == 0
+#ifdef HAVE_LIBGSM
+            && wav->formatTag != WAVE_FORMAT_GSM610
+#endif
+    ){
+        lsx_fail_errno(ft, SOX_EHDR, "WAV file bits per sample is zero");
+        return SOX_EOF;
+    }
+
     /* non-PCM formats except alaw and mulaw formats have extended fmt chunk.
      * Check for those cases.
      */
@@ -961,9 +970,14 @@ static int startread(sox_format_t *ft)
         wavgsminit(ft);
         break;
 #endif
+
     }
 
-    if (!wav->numSamples)
+    if ((!wav->numSamples)
+#ifdef HAVE_LIBGSM
+            && wav->formatTag != WAVE_FORMAT_GSM610
+#endif
+    )
         wav->numSamples = div_bits(qwDataLength, ft->encoding.bits_per_sample)
             / ft->signal.channels;
 
@@ -1348,8 +1362,10 @@ static int wavwritehdr(sox_format_t * ft, int second_h
         (dwSamplesWritten + wSamplesPerBlock - 1) / wSamplesPerBlock;
     dwDataLength = blocksWritten * wBlockAlign;
 
+#ifdef HAVE_LIBGSM
     if (wFormatTag == WAVE_FORMAT_GSM610)
         dwDataLength = (dwDataLength+1) & ~1u; /* round up to even */
+#endif
 
     if (wFormatTag == WAVE_FORMAT_PCM && (wBitsPerSample > 16 || wChannels > 2)
         && strcmp(ft->filetype, "wavpcm")) {
@@ -1444,9 +1460,11 @@ static int wavwritehdr(sox_format_t * ft, int second_h
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
@@ -1554,7 +1572,9 @@ static int stopwrite(sox_format_t * ft)
 
         /* Add a pad byte if the number of data bytes is odd.
            See wavwritehdr() above for the calculation. */
+#ifdef HAVE_LIBGSM
         if (wav->formatTag != WAVE_FORMAT_GSM610)
+#endif
           lsx_padbytes(ft, (size_t)((wav->numSamples + wav->samplesPerBlock - 1)/wav->samplesPerBlock*wav->blockAlign) % 2);
 
         free(wav->packet);
@@ -1594,6 +1614,7 @@ static int seek(sox_format_t * ft, uint64_t offset)
 
   if (ft->encoding.bits_per_sample & 7)
     lsx_fail_errno(ft, SOX_ENOTSUP, "seeking not supported with this encoding");
+#ifdef HAVE_LIBGSM
   else if (wav->formatTag == WAVE_FORMAT_GSM610) {
     int alignment;
     size_t gsmoff;
@@ -1613,7 +1634,9 @@ static int seek(sox_format_t * ft, uint64_t offset)
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

