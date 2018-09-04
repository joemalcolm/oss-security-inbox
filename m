X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/09/04/6
Message-ID: <CAJ_zFkLmua6XK9iRV-TRQsXKXo=s9Y32FQjOM5UB_UPrrNsAxw@mail.gmail.com>
Date: Tue, 4 Sep 2018 13:08:57 -0700
From: Tavis Ormandy <taviso@...gle.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?
Content-Type: text/plain; charset=utf-8

On Tue, Sep 4, 2018 at 1:03 PM Brandon Perry <bperry.volatile@...il.com>
wrote:

>
>
> > On Sep 4, 2018, at 2:59 PM, Tavis Ormandy <taviso@...gle.com> wrote:
> >
> > OK, well, the fixes missed 9.24 so vendors will have to either ship
> patches
> > once they land or wait for 9.25.
> >
> > $ ./gs -v
> > GPL Ghostscript 9.24 (2018-09-03)
> > Copyright (C) 2018 Artifex Software, Inc.  All rights reserved.
> > $ ./gs -q -dSAFER -sDEVICE=ppmraw -f testcase.ps
> > uid=1000(taviso) gid=1000(taviso)
> >
> > Let me know if anyone wants that testcase.
>
> Hey Tavis, could I have a copy of the test case please? Thanks so much.
>

Sure, here it is.

Thanks, Tavis.

Content of type "text/html" skipped

View attachment "bug699714.txt" of type "text/plain" (363 bytes)
