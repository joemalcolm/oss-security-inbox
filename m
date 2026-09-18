X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/16
Message-ID: <CAELMOr=vz-CDx0AhccByNzgKn7DvPnWo617CnS1LOfEEFFoUdw@mail.gmail.com>
Date: Fri, 18 Sep 2026 17:46:28 -0300
From: SOFIA ETCHEPARE DARONCO <sofia.etchepare@...d.ufsm.br>
To: oss-security@...ts.openwall.com
Subject: Re: A quartet of Linux local root vulns: DirtyAH6, PPPoEject, TUNderflow, and DiagSpill
Content-Type: text/plain; charset=utf-8

FWIW PPPoE is quite ubiquitous, though normally for gateway <-> ISP
communication rather than anything in end user machines.

On Fri, Sep 18, 2026 at 10:57 AM Hanno Böck <hanno@...eck.de> wrote:

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
>

