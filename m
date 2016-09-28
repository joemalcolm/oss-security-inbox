X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["985" "Wednesday" "28" "September" "2016" "16:03:08" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkKcsBVfV8AT3yUhAcMUSE-A89saZdfGMM822q43MsVLWw@mail.gmail.com>" "29" "Re: [oss-security] ImageMagick identify \"d:\" hangs" "^Cc:" nil nil "9" "2016092823:03:08" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        taviso@googl Sep 28   29/985   " thread-indent "\"Re: [oss-security] ImageMagick identify \"d:\" hangs\"\n") "<alpine.GSO.2.20.1609281712500.18003@freddy.simplesystems.org>" ("<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>" "<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>" "<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>" "<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>" "<CAJ_zFkKmrvJ5KrBEWV=2RXA3MF5M-4c4_FvucO7vN_GESANCpg@mail.gmail.com>" "<alpine.GSO.2.20.1609281712500.18003@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7752 invoked by uid 550); 29 Sep 2016 03:13:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1408 invoked from network); 28 Sep 2016 23:03:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ZR/PoUcTRO4+XdpgXozyUXQ1aen725EqKMdQ8ym8Lto=;
        b=eXj1WuBgtt3X8SQUbduCoTL0x9jZvUqmBimS5mZ5YVMx2VJQfaxpD5Be/C3DI4GRg9
         GYV32iNb18smr4Qrrt7xr2NgUGl0M0hY70xtweSOF2ymHN0IkjgSGreHydcMfm1zEKkP
         7BAnSIUZF8xflQnBLti7s0qwEbSnuMrHjjYefTJAQCqmNAjnoNvqoHCFhaR/PxSyoQtG
         6EJBQuqA6J0l7r5qQcrED4it52gK3e8P/EqTv+Y7WMOT8bX3sBBd06k/+RnEMCFbu2Kv
         EkrF2Lbcepc6GJZ1jOThg7KsWL42L37uX9hOej8z8o7xXseUNtYHCH/6QMDTvBQjgwz/
         Hb9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ZR/PoUcTRO4+XdpgXozyUXQ1aen725EqKMdQ8ym8Lto=;
        b=iaKXLAd7GLhUPOaFu24oUp7rgIphVsJelI/Zsoe9oba+H6V0VD5uFJmWUWs7PS1vyR
         A+nNMJhqfw2nnK8Bxi21EKMGczzZOxhxgIR/cs+vJ2XHr5tEfiQ1lgGbjbpDaLSjYhdN
         YvKa3p/UUcGmC9a2u1mCzW6qz9bXpxQ1Rh0K3/cQCGe10qhEcJqrAxTFm+GtLoQ9I5vm
         9znAKeX75r2ENK9W0Oz+MUMScqaaanDDvQJqat8kGZ7Df1sYbAV/snWPDOCOlemwbfZn
         puwzBUAa6Kg6ZyBeNT7YpmxykhsFbEXVPgZptmNWuIYfOXdUbGUXWocscbC2KM3oDaaM
         8Czw==
X-Gm-Message-State: AA6/9RnoJtywYQyzrQ85JUQ55xVevLAHZAlZ/Q+Ug2a/bnhN3+tXs6JeiXBDGag21O3PLWcDkNgG+jMO57nOd38S
X-Received: by 10.31.16.12 with SMTP id g12mr15957653vki.146.1475103809257;
 Wed, 28 Sep 2016 16:03:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.GSO.2.20.1609281712500.18003@freddy.simplesystems.org>
References: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>
 <20160927142500.3x26pcrhw5x4nt6s@jwilk.net> <alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>
 <CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>
 <CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>
 <CAJ_zFkKmrvJ5KrBEWV=2RXA3MF5M-4c4_FvucO7vN_GESANCpg@mail.gmail.com> <alpine.GSO.2.20.1609281712500.18003@freddy.simplesystems.org>
Message-ID: <CAJ_zFkKcsBVfV8AT3yUhAcMUSE-A89saZdfGMM822q43MsVLWw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com
Date: Wed, 28 Sep 2016 16:03:08 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick identify "d:" hangs
To: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>

On Wed, Sep 28, 2016 at 3:15 PM, Bob Friesenhahn
<bfriesen@simple.dallas.tx.us> wrote:
> On Wed, 28 Sep 2016, Tavis Ormandy wrote:
>>
>>
>> (/etc/passwd) /dumpname load 256 string filenameforall
>> $ convert test.gif png:test.png
>> <creates a file called test.png containing first line of /etc/passwd>
>>
>> Also seems to work with gm convert.
>
>
> It is good that you did not single out just one using program.
>
> This issue seems to afflict any program which invokes Ghostscript in general
> and not just *Magick.  However, 'convert' does offer to write a rendered
> result to an output file.
>

I think I see the problem, ghostscript broke -dSAFER then they fixed
it later but didn't allocate a CVE, so the distros never updated.

http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=ae930279498a5961fcf5d70ffe86864883609cbc

I think it should be fixed in gs 9.10 or later (Debian appears to be
on 9.06), but you can still enumerate filenames (just not the
content).

Tavis
