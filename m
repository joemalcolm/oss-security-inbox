X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/01/05/11
Message-ID: <AANLkTikbpB-ES6CsuxefjSxwtOEHzEyQ0QgATXPTeZTg@mail.gmail.com>
Date: Wed, 5 Jan 2011 17:04:59 -0500
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: patch directory traversal flaw
Content-Type: text/plain; charset=utf-8

Be sure to be careful while applying the patch to fix this one. :p

-Dan

On Wed, Jan 5, 2011 at 4:54 PM, Vincent Danen <vdanen@...hat.com> wrote:
> We got a heads up on a directory traversal flaw in patch.  I don't think
> a CVE name has been assigned to it; could we get one?  It allows for the
> creation of arbitrary files in unexpected places due to the use of '..'.
>
> References:
>
> https://bugzilla.redhat.com/show_bug.cgi?id=667529
> http://osdir.com/ml/bug-patch-gnu/2010-12/msg00000.html
>
> Thanks.
>
> --
> Vincent Danen / Red Hat Security Response Team
