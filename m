X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/6
Message-ID: <CAAnjWm+aUr3bv1QXO00eZFG3RseyHNZt6Oa3a_KTBbL2-CbYvQ@mail.gmail.com>
Date: Fri, 18 Sep 2026 11:30:40 -0400
From: Kevin Riggle <kevinr@...plexsystems.group>
To: oss-security@...ts.openwall.com
Subject: Re: A quartet of Linux local root vulns: DirtyAH6, PPPoEject, TUNderflow, and DiagSpill
Content-Type: text/plain; charset=utf-8

Would it be as conceptually straightforward on the distro side as
breaking most of these less-common modules out into their own
packages, e.g. linux-module-pppoe, linux-module-sctp, etc?

It would add an extra step of installing the kernel module for anyone
who wanted to use one of these protocols, but as you say Hanno it
would provide a great deal of attack surface reduction for the
overwhelming majority of user who don't use these modules.

Best,
- Kevin

On Fri, Sep 18, 2026 at 9:57 AM Hanno Böck <hanno@...eck.de> wrote:
>
> Hi,
>
> On Fri, 18 Sep 2026 06:15:07 +0000
> manizada <manizada@...me> wrote:
>
> >   ("xfrm: ah6: validate routing header segments_left")
> [...]
> >   ("net: tun: bound receive headroom")
> [...]
> >   ("pppoe: reload header pointer after dev_hard_header()")
> [...]
> >   ("sctp: prevent peer transport count overflow")
>
> Reading these abbrevations (xfrm/ah6, pppoe, sctp), I can't help
> thinking "that sounds like a lot of non-standard networking protocols".
>
> I think it emphasizes what I wrote here a while ago:
> https://seclists.org/oss-sec/2026/q2/557
>
> Attack surface reduction is a successful strategy to not be affected
> by vulnerabilities. If you build your own kernels, you can avoid being
> hit by many of the recent and future kernel vulnerabilities by
> disabling functionalities you don't use.
>
> --
> Hanno Böck - Independent security researcher
> https://itsec.hboeck.de/
> https://badkeys.info/



-- 
Kevin Riggle - Principal, Complex Systems Group LLC
he/him • Brooklyn, NY, USA • Eastern Time
https://complexsystems.group • https://calendly.com/kevinriggle/coffee
