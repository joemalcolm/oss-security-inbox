Received: (qmail 1297 invoked by uid 550); 31 Mar 2023 12:03:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27767 invoked from network); 31 Mar 2023 00:33:43 -0000
Date: Fri, 31 Mar 2023 02:33:31 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: Nam Nguyen <namn@berkeley.edu>
Cc: oss-security@lists.openwall.com
Message-ID: <20230331003331.bslHg%steffen@sdaoden.eu>
In-Reply-To: <87bkk9hljn.fsf@n.m>
References: <Y91yP6mYIZ+UXmgf@alf.mars> <20230314110138.GA1192267@subdivi.de>
 <20230314191132.qDz3u%steffen@sdaoden.eu>
 <20230314201652.RlbWr%steffen@sdaoden.eu>
 <20230330204300.jYitb%steffen@sdaoden.eu> <87bkk9hljn.fsf@n.m>
Mail-Followup-To: Nam Nguyen <namn@berkeley.edu>,
 oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-440-gf136fe83f1
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Re: sox: patches for old vulnerabilities

Hello Nam.

Nam Nguyen wrote in
 <87bkk9hljn.fsf@n.m>:
 |Steffen Nurpmeso writes:
 |> Steffen Nurpmeso wrote in
 |>  <20230314201652.RlbWr%steffen@sdaoden.eu>:
 |>  ...
 |>||Helmut Grohne wrote in
 |>|| <20230314110138.GA1192267@subdivi.de>:
 |>|||On Fri, Feb 03, 2023 at 09:44:47PM +0100, Helmut Grohne wrote:
 |>|||>  * CVE-2021-33844
 |>|||
 |>|||The original fix for this issue would cause a regression. After \
 |>|||applying
 |>|||it, sox would be unable to decode WAV GSM files. This has been reported
 ...
 |> libGSM and yes he was right.  So on top of them all a partial undo
 |> of the last is necessary; i will attach the full diff, too.
 |
 |I propose keeping that check in order to fix the regression of not
 |opening wav gsm files.

Oh.  You are surely right.

 |Steffn Nurpmeso's patch with tweaks can be found inline at the end of
 |this email. This patch retains the line 654 hunk and adds line 961 hunk
 |to avoid dividing by 0 for wav gsm files. wav->numSamples is calculated
 |similarly to debian's version of sox.

Not at all.

 |Feedback is welcome as I am not familiar with the code base.

Well me neither (oh i never looked after having seen they use
floating-point internally, many years ago; i never understood why
tremor did not fly for OGG, maybe someone knows).
But yes, i can confirm with your additional condition the Debian
Bug Report thing works, aka GSM.

  #?0|kent:sox.git$ src/sox -t ogg  /x/music/recs.misc/eisler_tucholsky-rosen_auf_den_weg_gestreut.ogg -t wav -e gsm-full-rate ok.wav
  #?0|kent:sox.git$ ALSAPCM=xmix sox ok.wav -t alsa
  sox FAIL formats: can't open input file `ok.wav': WAV file bits per sample is zero
  #?2|kent:sox.git$ ALSAPCM=xmix src/sox ok.wav -t alsa

  ok.wav:

   File Size: 1.18M     Bit Rate: 71.7k
  ...

 |new 961 hunk:

But why do you say 961 repeatedly?  Your lines numbers

 |--8<---------------cut here---------------start------------->8---
 |    967 #ifdef HAVE_LIBGSM
 |    968     case WAVE_FORMAT_GSM610:
 |    969         wav->numSamples = qwDataLength / wav->blockAlign * \
 |    wav->samplesPerBlock;
 |    970         wavgsminit(ft);
 |    971         break;
 |    972 #endif
 |    973
 |    974     }
 |    975
 |    976     if ((!wav->numSamples)
 |    977 #ifdef HAVE_LIBGSM
 |    978         && wav->formatTag != WAVE_FORMAT_GSM610
 |    979 #endif
 |    980     )
 |    981         wav->numSamples = div_bits(qwDataLength, ft->encoding.bits_\
 |    per_sample)
 |    982             / ft->signal.channels;
 |--8<---------------cut here---------------end--------------->8---

are almost right, i now have (after reverting my revert)

  --- a/src/wav.c
  +++ b/src/wav.c
  @@ -972,7 +972,11 @@ static int startread(sox_format_t *ft)
   #endif
       }
  
  -    if (!wav->numSamples)
  +    if (!wav->numSamples
  +#ifdef HAVE_LIBGSM
  +            && wav->formatTag != WAVE_FORMAT_GSM610
  +#endif
  +    )
           wav->numSamples = div_bits(qwDataLength, ft->encoding.bits_per_sample)
               / ft->signal.channels;

so your numbers above are +1 compared to "mine"?
Other than that thanks again.  I did not really look.  (That is,
for functioning GSM.)  Seems to me no more divisions with
numSamples or surrounding that, that is all i know.

Ciao!  (I happily post the entire patch again on request.)

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
