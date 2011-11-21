X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/21/10
Message-ID: <CABqVa39kjp6ROj=SBYGRHQBxYEy4kvHXvQKn9VNtaYHzVj+tJA@mail.gmail.com>
Date: Mon, 21 Nov 2011 09:07:49 -0700
From: Kurt Seifried <kurt@...fried.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request -- kernel: wrong headroom check in udp6_ufo_fragment()
Content-Type: text/plain; charset=utf-8

On Mon, Nov 21, 2011 at 8:54 AM, Petr Matousek <pmatouse@...hat.com> wrote:
> "A bug was found in the way headroom check was performed in
> udp6_ufo_fragment() function. A remote attacker could use this flaw to
> crash the system."
>
> Details:
> http://bugzilla.redhat.com/show_bug.cgi?id=755584#c1
>
> Upstream commit:
> a9cf73ea7ff78f52662c8658d93c226effbbedde
>
> References:
> http://bugzilla.redhat.com/show_bug.cgi?id=755584
> http://bugzilla.redhat.com/show_bug.cgi?id=682066
>
> Thanks,
> --
> Petr Matousek / Red Hat Security Response Team
>

Sorry having some laptop/email issues. Please use CVE-2011-4326 for this issue.

-- 
Kurt Seifried
kurt@...fried.org
