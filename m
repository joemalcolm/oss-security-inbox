X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/14/4
Message-ID: <AANLkTin_cxUt+ESYLFxT7W_W+8HukqwoGRPYx7XUKRx9@mail.gmail.com>
Date: Mon, 14 Mar 2011 04:13:45 -0400
From: Andrew Clausen <clausen@...n.upenn.edu>
To: oss-security@...ts.openwall.com
Cc: Kees Cook <kees@...ntu.com>
Subject: Re: announcing libwipe
Content-Type: text/plain; charset=utf-8

Hi Kees,

Thanks for your encouragement!

> If libwipe grew similar bit-pattern handling for new(), it could be used
> for similar purposes (trying to ferret out use-after-free or
> use-before-init bugs in general).

I'm not sure I understood your proposal.  Are you thinking about the
C++ new operator?  Is there a problem with MALLOC_PERTURB_?

Cheers,
Andrew
