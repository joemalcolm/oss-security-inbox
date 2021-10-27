X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2628" "Wednesday" "27" "October" "2021" "16:40:55" "+0200" "=?UTF-8?B?U2FtdWVsIEdyb8Of?=" "saelo@google.com" nil "79" "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006" nil nil nil "10" nil nil (number mark "U       saelo@google Oct 27   79/2628  " thread-indent "\"Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24110 invoked by uid 550); 27 Oct 2021 16:53:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11853 invoked from network); 27 Oct 2021 14:41:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TlVuzPn/QRGK4ktPcwBuk0bW1RNcDSl5kZfHL9KC+3k=;
        b=oF6asEXdshQV6Y/6x32j/SmwSQK90P+EXDUzo958wSLFYnzfpgmIyZDpgJmBx/+YUa
         gW1YhO1EOZ6UzgKYGsRFamdlhhWUDyWo1MNnws0Cg+jEaBaUhT+lBKWHXhbDnxradKsY
         U3TGyrRniS9TaOZyeCe+EPa+5zXJ2ne5CCbf3jjYlClybGLCVYPMKlnPbY+faYSD5tFO
         xJcvrq4CpxKDVhz2kJHZlmu301N9i1utdHz4vHvSTt0Pu2u1YTgngwJRSMn59ddQA4nz
         0JG2iQkPbFU0e0sEMK3ljC/MsACIJ7xNS4enyHEBvlzSPcjtPeiTXFmAi5dkEsE+ro+l
         tRnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TlVuzPn/QRGK4ktPcwBuk0bW1RNcDSl5kZfHL9KC+3k=;
        b=nsPW6MABoFudTgfU+ohBqeS8EJlFPEoU6oKWPFgYf2b9UZjTTF1CAeximWHBn3b5Hq
         gymJpPzonasOLn0gibQlhcnJ6WmCM5DkyBhDVGz7Al4hbfUhLAromUgyjv6xE4sfsEJC
         eoT3U8F6ko4RecN4zObk/DfILNQs8izAJtM93lDPKCgQoHNZftqle9ahhpXTF/cVf81O
         scpKWg6CrEmcObV34y3UJgsZ8waTGMwS0DXjxQ4+eaaTOj/Ui59bcpFZC75onbWVSR6b
         GKCUOtiih7uj1wze+r9c0YlxQEvJfremsOZ0edro1ZlNXjxDC9qndrGzMf7EBV8ZEOmE
         UNqQ==
X-Gm-Message-State: AOAM530k4OqjclS6N/5JmVNmk6xdW3am+a+RkBNhPSqfsMWDr5iCL99H
	xOiBvf3sSL5IAcNXJbRQRNHIAX0CS+CqiBWvoIGRSg==
X-Google-Smtp-Source: ABdhPJwPFsTH09eqHAqPXh/5J1X/2vRJjd2EeEylngTqwn/LbvdDRBJ1n/DD+1cES3i0TsY8ABtvxGrYkUzBMlmbxc4=
X-Received: by 2002:aa7:d34f:: with SMTP id m15mr45134056edr.40.1635345666342;
 Wed, 27 Oct 2021 07:41:06 -0700 (PDT)
MIME-Version: 1.0
References: <03eb1900-5593-09ff-8814-008632c46c5c@igalia.com>
 <YXjQiwOj3gF/phTC@elende.valinor.li> <CAJAmgfgpTF--5HsAaWrmWaoM5dHswtdNB2==gUdhSCiDYG6X+A@mail.gmail.com>
In-Reply-To: <CAJAmgfgpTF--5HsAaWrmWaoM5dHswtdNB2==gUdhSCiDYG6X+A@mail.gmail.com>
From: =?UTF-8?B?U2FtdWVsIEdyb8Of?= <saelo@google.com>
Date: Wed, 27 Oct 2021 16:40:55 +0200
Message-ID: <CAMyKh9dsqQfJQ1-aTomc_Ou3q3_m0iofZtuAwxPaFrm0mi4B1Q@mail.gmail.com>
To: Francis Perron <francis.perron@shopify.com>
Cc: oss-security@lists.openwall.com, 
	Carlos Alberto Lopez Perez <clopez@igalia.com>, security@webkit.org, Alberto Garcia <berto@igalia.com>
Content-Type: multipart/alternative; boundary="00000000000087e27e05cf56959e"
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006

--00000000000087e27e05cf56959e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi!

I don't know what happened to CVE-2021-30851 as these CVEs are allocated by
Apple usually. I think the CVE would correspond to this issue though:
https://bugs.webkit.org/show_bug.cgi?id=3D227988

Best!
Samuel

On Wed, Oct 27, 2021 at 3:02 PM Francis Perron <francis.perron@shopify.com>
wrote:

> On Wed, Oct 27, 2021 at 12:09 AM Salvatore Bonaccorso <carnil@debian.org>
> wrote:
> >
> > Hi,
> >
> > [dropping most other recipients]
> >
> > On Tue, Oct 26, 2021 at 08:05:36PM +0100, Carlos Alberto Lopez Perez
> wrote:
> > >
> ------------------------------------------------------------------------
> > > WebKitGTK and WPE WebKit Security Advisory
>  WSA-2021-0006
> > >
> ------------------------------------------------------------------------
> > >
> > > Date reported           : October 26, 2021
> > > Advisory ID             : WSA-2021-0006
> > > WebKitGTK Advisory URL  :
> https://webkitgtk.org/security/WSA-2021-0006.html
> > > WPE WebKit Advisory URL :
> https://wpewebkit.org/security/WSA-2021-0006.html
> > > CVE identifiers         : CVE-2021-30846, CVE-2021-30848,
> > >                           CVE-2021-30849, CVE-2021-30851,
> > >                           CVE-2021-30858, CVE-2021-42762.
> > >
> > > Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.
> > [...]
> > > CVE-2021-30851
> > >     Versions affected: WebKitGTK and WPE WebKit before 2.34.0.
> > >     Credit to Samuel Gro=C3=9F of Google Project Zero.
> > >     Impact: Processing maliciously crafted web content may lead to co=
de
> > >     execution. Description: A memory corruption vulnerability was
> > >     addressed with improved locking.
> >
> > CVE-2021-30851 seems to be REJECTED (cf.
> > https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-30851). Is
> > there a typo in the CVE id for this one or did the CVE got rejected
> > later on?
>
> BCC'ing Samuel Gro=C3=9F
>
>
> Salvatore -
>   I think 30851 was not issued, and it may have been a mistake here.
> There was no other CVE issued as part of WSA-2021-0006 according to
> the GitHub repo for the CVE program:
> https://github.com/CVEProject/cvelist/search?q=3Dwsa-2021-0006
>
> if you need a CVE for this, Samuel may be able to sort this out with
> the WebKit folks, who also seem to advertise 30851 on their security
> advisory site: https://webkitgtk.org/security/WSA-2021-0006.html
>
>
> Have a good Wednesday,
>
> --
> Francis Perron
>   Engineering Program Manager | Security Incident Response
>

--00000000000087e27e05cf56959e--
