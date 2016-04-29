X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2021" "Friday" "29" "April" "2016" "11:08:51" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160429150851.0723C8BC556@smtpvmsrv1.mitre.org>" "54" "[oss-security] Re: CVE request: Mplayer/Mencoder integer overflow parsing gif files" nil nil nil "4" "2016042915:08:51" "[oss-security] Re: CVE request: Mplayer/Mencoder integer overflow parsing gif files" (number mark "U       cve-assign@m Apr 29   54/2021  " thread-indent "\"[oss-security] Re: CVE request: Mplayer/Mencoder integer overflow parsing gif files\"\n") "<CACn5sdTKJd7hEo=YmpPmpuB76XDumiMORWJXGwiacq83_aUPmg@mail.gmail.com>" ("<CACn5sdTKJd7hEo=YmpPmpuB76XDumiMORWJXGwiacq83_aUPmg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18208 invoked by uid 550); 29 Apr 2016 15:09:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18187 invoked from network); 29 Apr 2016 15:09:02 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdTKJd7hEo=YmpPmpuB76XDumiMORWJXGwiacq83_aUPmg@mail.gmail.com>
Message-Id: <20160429150851.0723C8BC556@smtpvmsrv1.mitre.org>
Date: Fri, 29 Apr 2016 11:08:51 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Mplayer/Mencoder integer overflow parsing gif files

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A crash caused by an integer overflow parsing a gif was found in the last
> revision of mplayer. It seems to affect older versions too. It was recently
> fixed (r37857). Technical details and a reproducer are available here:
> 
> https://trac.mplayerhq.hu/ticket/2295
> 
> I verified that this issue affects mencoder

>> Fixed in r37857.
>> 
>> The gif demuxes assumes in many places that width*height is <=
>> INT_MAX; this is not true with the sample. Fixed by validating the
>> picture size.

Use CVE-2016-4352.

This code was added to libmpdemux/demux_gif.c between r37856 and r37857:

   // Validate image size, most code in this demuxer assumes w*h <= INT_MAX
   if ((int64_t)gif->SWidth * gif->SHeight > INT_MAX) {
     mp_msg(MSGT_DEMUX, MSGL_ERR,
            "[demux_gif] Unsupported picture size %dx%d.\n", gif->SWidth,
            gif->SHeight);
     if (DGifCloseFile(gif) == GIF_ERROR)
       print_gif_error(NULL);
     free(priv);
     return NULL;
   }

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXI3iYAAoJEHb/MwWLVhi2ndcQAIfNBWzI+O+D90r31xFgzNHh
q5AYsp+VN48Z6f8Ctp6AVXWoD+I/KHC1AIBc5Pn9/ahDyQ+cv9ejMdizkohu7TpW
q4vfeCsmp94pw2w8tKbT4wgI19mdERvWiFe03SD/1xpxaHc6gIZN4+zwmswyIJVq
9UVl6cEbSD/NGDpudTwqNH2Tc6KPfpUTPDh05nHhdEYkoPepemS0E6dHZl0cnV38
qFAF7EvF4h+1pQSfchVdtf58nPu5g7tuR7eudnqnq9g49PZlIOPBKB/cdra7ZON7
eFvZp+0XZ3QtwvDiQ18uAHnobN2RdnonISfimOsd7zYDyoxtAttfOvBRaVRDtTBr
U0hfDRA8g/d5JTmeLMcfm1NWG3+0nF90BVYjY7cziAVBAGoj17fo66mw6nM5Jn2A
1T/9Cc/gqzIvlGlVQk/3KObdK0DbZvGxgFxo8pKTzrRo/thAS6Rp30X672pfGH1W
DxWhbkJgnU+PmaW+86zrWsnHGqoX++bduSIxo/Y1jjigwetaTgCRHO6nFI0onWex
dP0z76DjZ4jBAs7GzsFkv3ck/ZfaQ6MxjXjcR1yYZFeTp3WlD3VIZVuZwohg78wo
IR/5QOoQjwoV5nbgH3l2f0h2pvrCJPvQiwbADzZJpklpg45D2Y8EIMtOQy64hZSz
2kFgy6oWuYKbuQf49Wi4
=oaGW
-----END PGP SIGNATURE-----
