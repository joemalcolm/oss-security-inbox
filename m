X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2361" "Sunday" "16" "October" "2016" "10:23:43" "+0000" "Graham Christensen" "graham@grahamc.com" "<CAHapaJ1yTNVH+umS9U3SeW0jK73WY0H06_k0eJmJ3pnEVO9D+Q@mail.gmail.com>" "68" "Re: [oss-security] Re: Fuzzing jasper" "^Cc:" nil nil "10" "2016101610:23:43" "[oss-security] Re: Fuzzing jasper" (number mark "        graham@graha Oct 16   68/2361  " thread-indent "\"Re: [oss-security] Re: Fuzzing jasper\"\n") "<20161016030229.F231642E027@smtpvbsrv1.mitre.org>" ("<1528713.C8CqGc87r5@arcadia>" "<20161016030229.F231642E027@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25711 invoked by uid 550); 16 Oct 2016 13:30:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32666 invoked from network); 16 Oct 2016 10:24:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=grahamc.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cYk3dVB+2o+qGN4GPbiCB7bwVFtI4gXyKI91aqZ9QuE=;
        b=avFRqDfFm00JWNhU/i1KG5T4L6fEYUcFc22y/orzXmzhjd2K8oOS5n33NRM1f6rOQ9
         SGlKFtyhTl9DE5L99CHZwFYp+c0B8XU5HDjJ4FHFy2354HWMwaI6ai/8kyLtgJDTgDgC
         aUG7hJ1UeciyRK46VnRJCiyww4mIMXGpC1amo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cYk3dVB+2o+qGN4GPbiCB7bwVFtI4gXyKI91aqZ9QuE=;
        b=SstLFKJaANKTKwZ79S7AvjpZGQTtizt4h7td3wat4FFWC9gLn5zE3BYd6oS0/hPhPR
         Xcmz9LAosnxjqyT1a3NYSfaOM9qC7Ey6OBnYgaWLVgbTlI8OycxTNRrAYDa0dRPyijMQ
         2EmG8h+d5LwfDxQTxk25ORUZU9SDTGBNcvbTwqEuQwu29OlHDitiazia+O/mEiztjzX9
         2/nbVviRjQsj/oIryLBhcnAzKgyA4IhAdZGqnPFgTwn/FVaXXtDbGxouB8sSXDrFs30E
         mNoXDypoLU+Oz37xmqHWygR59btdSRgro+cb5L5bAhNnxcSLjDgvk/o8dNVk5FWGFhHV
         SySQ==
X-Gm-Message-State: AA6/9RnbLGwEpX06Wr5v0Rddkv57TzyKVW2KcqdEjZ+3SjTP/EffbcZXDuugL3TGmYEImHTSdFBKjkSvqNeUjw==
X-Received: by 10.31.158.20 with SMTP id h20mr11812354vke.110.1476613434131;
 Sun, 16 Oct 2016 03:23:54 -0700 (PDT)
MIME-Version: 1.0
References: <1528713.C8CqGc87r5@arcadia> <20161016030229.F231642E027@smtpvbsrv1.mitre.org>
In-Reply-To: <20161016030229.F231642E027@smtpvbsrv1.mitre.org>
Message-ID: <CAHapaJ1yTNVH+umS9U3SeW0jK73WY0H06_k0eJmJ3pnEVO9D+Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11427c36365807053ef8dba4
Cc: cve-assign@mitre.org
Date: Sun, 16 Oct 2016 10:23:43 +0000
From: Graham Christensen <graham@grahamc.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Fuzzing jasper
To: oss-security@lists.openwall.com, ago@gentoo.org

--001a11427c36365807053ef8dba4
Content-Type: text/plain; charset=UTF-8

For what it is worth, Jasper has recently issued a release fixing many
CVEs, and would likely appreciate these fussing results as bug reports on
their github project: https://github.com/mdadams/jasper/
On Sat, Oct 15, 2016 at 11:21 PM <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > AddressSanitizer: SEGV on unknown address
> > 0x527ebf in bmp_getdata ...
> jasper-1.900.1/src/libjasper/bmp/bmp_dec.c:383:5
> >
> > AddressSanitizer: SEGV on unknown address
> > 0x528252 in bmp_getdata ...
> jasper-1.900.1/src/libjasper/bmp/bmp_dec.c:385:5
>
> Use CVE-2016-8690 for both of these (the first and fifth items in the
> http://www.openwall.com/lists/oss-security/2016/08/23/6 post).
>
>
> > AddressSanitizer: FPE on unknown address
> > 0x56de63 in jpc_dec_process_siz ...
> jasper-1.900.1/src/libjasper/jpc/jpc_dec.c:1195:17
>
> Use CVE-2016-8691.
>
>
> > AddressSanitizer: FPE on unknown address
> > 0x56dee3 in jpc_dec_process_siz ...
> jasper-1.900.1/src/libjasper/jpc/jpc_dec.c:1197:18
>
> Use CVE-2016-8692.
>
>
> > AddressSanitizer: attempting double-free
> > 0x51f8f8 in mem_close ...
> jasper-1.900.1/src/libjasper/base/jas_stream.c:1073:3
>
> Use CVE-2016-8693.
>
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJYAu2GAAoJEHb/MwWLVhi2D2wQAI6W9/5UOJJD9vMc25GdYVGo
> Is0tX/21v2ibFpgyAAHBLaQd1ohNeu9U5Y6Nj9lAYAydmcoEZrXX9FxEMNp6XlI3
> ybIDOapRLsjqLovdEzZUEnEDiHWAFS/t/p4hZv67PB7fHWKkeA3QhthSf3OlGVNm
> IDQX8jMzhb96ZLS9aq5Hlz28K2z2Bx9j08WXQ0Fkp2ksMOCdNF0QwRp1TuA7Ork8
> gtxNSVS+r8oAwWBH9fdwU8d9rgBoh0nkMVt9PJex5Hd4ys8CrOS6gBBc9HqDcxdc
> bVdYRUuNbXJjZdlOcfQU37a6MyWJ0gCmCp6xs7u1joAnNmzT9C894xLInJFzx37n
> JVqNBMltWgkkp1ClyVIdkRJErif2JstRpL59JBaMXgSRD0ZCZRsMrehc6SobX0A1
> iUGxdjG/jpP7c8ZPaC2SS/1y0cEpP7CsbDFliZaGxt6QcKOfNqs33L3DSuc7qn0d
> OJIH4GMNlZQFgf7+c67+ZSi86HVmTda9DJjm2a9uqU7tKKE/kJWC9OyWTef9K0aJ
> 1HAu1yNjgGmc/oIIMCk/8wNO4UqlHiXhcF/kjWUBc4/eTAPxYLHSH5703HTStaVU
> EN0ONeBMsfx6lhZgoJqDC+ItztjnDR90VGJyrH98XoEn+3KzjGkgEeaYv/N/mUfw
> Q/58lzCKYeVI4ovM1u+J
> =1lOZ
> -----END PGP SIGNATURE-----
>

--001a11427c36365807053ef8dba4--
