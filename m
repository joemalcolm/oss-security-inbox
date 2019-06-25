X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2803" "Tuesday" "25" "June" "2019" "09:46:39" "-0400" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2VB6htDEL2u1uNQbA1q_VugPeuqegSdBbdvb-XzNOqbeg@mail.gmail.com>" "67" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062513:46:39" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        alex.gaynor@ Jun 25   67/2803  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" "<E1hfSKS-00015J-V5@rmmprod07.runbox>" "<20190624193048.GA8039@espresso.pseudorandom.co.uk>" "<CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>" "<alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8078 invoked by uid 550); 25 Jun 2019 13:47:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8053 invoked from network); 25 Jun 2019 13:47:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=hRaPOjE91rpWQbqG127UmcaHrYvgcpcmwkfTL9WKVhU=;
        b=bypoGYJLdWzxsFTIblNRD4PbP3jb4je07HiZQeoFc7rzDWyEm2s1ZKS2wbY+r1ZfZS
         1t8XKqXo9jrV3aWJf4duPFevt9t5mondytHl2bS3OUC8D5/XFovAAXY2s3KxiunWcaZo
         IaE94sLwN4AJF1HG12QQJc23mN6msUBIlvpyWiuNhrl0W9MNwWvTbATnL/oy4L/WCqUc
         dsh9z8fEAtt+EIPkNYmp3AJyk2+HiF8rV/czO5ZLQ5oHK4pmSSFTuPS8B5ceYXZf59h1
         9CCcOSRyUEcZcyRJ0ahUwlgdq9f8rN6KGXdT4lliWr5bvPHAuCfsj6UOLaW7SAbdinvP
         iSTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=hRaPOjE91rpWQbqG127UmcaHrYvgcpcmwkfTL9WKVhU=;
        b=jurgGi787AhLViSX54np0p+4YpIdqLFtyAy1+dWFAENWY1CzeOO16CKBrpe/4qXMTE
         98J/dN36u+JwGyouVozsxP602LiHuzygRMoHc0Jn+h4nw52+BrgPZepFN5W7AFAd34Ul
         CTcpgPgpUOLTxfx+vQSxFCyIH/rlpOFGrgSVJtU745c34zOoSaRv9l90fYR0wvr5lqfb
         0IoqA/Wm+kHA22IvsMb6pZHo5ovZzm7DeneMDbMBqVMxrQY5cA0qzAjlmBxZq9jfr24s
         6sqBVfcw3yqEptorps4bHGSS9tWOz1qgoiV7LZ90oVvnBgUV/e80remY3rGWf4X9UTGb
         BZ5w==
X-Gm-Message-State: APjAAAWQgEWUgXh5IDjaJPGbcpICWEu3LwrnJoaopHQQYuVSzGXXIqBz
	awAKiIiFmcy060t4itPwRIllia6I0iA3LOmqOAK4rg==
X-Google-Smtp-Source: APXvYqySBTIYdVLcIZX1InHFJC9BK1zhPYoWXB/0NrEfFm7l5h3K9uGuUklwj2NoT3NGQvAT3/HSLXQkYk7Wcs2AHhc=
X-Received: by 2002:a05:6830:95:: with SMTP id a21mr22320103oto.35.1561470410952;
 Tue, 25 Jun 2019 06:46:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190617113203.GH15432@suse.de> <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
 <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
 <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org> <E1hfSKS-00015J-V5@rmmprod07.runbox>
 <20190624193048.GA8039@espresso.pseudorandom.co.uk> <CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>
 <alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>
In-Reply-To: <alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>
Message-ID: <CAFRnB2VB6htDEL2u1uNQbA1q_VugPeuqegSdBbdvb-XzNOqbeg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000002c150f058c262947"
Date: Tue, 25 Jun 2019 09:46:39 -0400
From: Alex Gaynor <alex.gaynor@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
To: oss-security@lists.openwall.com

--0000000000002c150f058c262947
Content-Type: text/plain; charset="UTF-8"

20% was a completely made us number.

Alex

On Tue, Jun 25, 2019, 9:42 AM Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
wrote:

> On Mon, 24 Jun 2019, Alex Gaynor wrote:
> > - Not having sooooo many vulnerabilities. While there's some dispute over
> > just what % of the bugs that OSS-Fuzz and syzbot turn up are exploitable,
> > there's no doubt that they find a _lot_ of them. Even if only 20% of
> > OSS-Fuzz reports were truly exploitable vulnerabilities, that'd still be
> >> 600 of them. We can't produce this many vulnerabilities and then try to
> > clean up afterwards by finding them with fuzzing -- at some point the
> > number of vulnerabilities simply overwhelms us. Tactics for reducing
> > vulnerabilities in the first instance, like memory safe languages, are an
> > important part of making this problem tractable.
> >
> > Do folks feel like there were important themes that this misses?
>
> I see the assumption that 20% of oss-fuzz reports are exploitable
> vulnerabilities.  Where does this percentage estimate come from?  What
> does it mean to be "exploitable"?
>
> From working on fixing oss-fuzz detected bugs in GraphicsMagick I see
> that many/most of the issues are not significant from a security
> standpoint, assuming that the software is deployed in a way suitable
> for its level of exposure.  Common issues include:
>
>   * Huge uninitialized memory allocations (which do not really matter
>     under Linux since Linux does not reserve anything but virtual
>     memory space).
>
>   * Consumption of uninitialized data (e.g. image data) which is not
>     used to make important decisions.  This is usually due to unhandled
>     cases or error handling which does not quit immediately.
>
>   * Tiny heap over-reads which are not past the bounds of the
>     underlying allocation.
>
>   * Heap over-reads or over-writes which cause an immediate core dump.
>
>   * Excessively slow code with the slowness emphasized by ASAN and
>     UBSAN code running vastly slower.  The excessively slow code is not
>     necessarily noticeable in a normal compilation.
>
>   * Memory leaks.
>
>   * "undefined behavior" which nevertheless has a common behavior that
>     compilers have followed since the dawn of time.
>
> The most important thing that oss-fuzz contributes is a large
> collection of files which cause problems for unfixed software such
> that only the unaware or foolish do not update to fixed versions.
>
> Bob
> --
> Bob Friesenhahn
> bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
> GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
> Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
>

--0000000000002c150f058c262947--
