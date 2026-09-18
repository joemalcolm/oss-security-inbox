X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/4
Message-ID: <20260918090439.2a6012f6@hboeck.de>
Date: Fri, 18 Sep 2026 09:04:39 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: A quartet of Linux local root vulns: DirtyAH6, PPPoEject, TUNderflow, and DiagSpill
Content-Type: text/plain; charset=utf-8

Hi,

On Fri, 18 Sep 2026 06:15:07 +0000
manizada <manizada@...me> wrote:

>   ("xfrm: ah6: validate routing header segments_left")
[...]
>   ("net: tun: bound receive headroom")
[...]
>   ("pppoe: reload header pointer after dev_hard_header()")
[...]
>   ("sctp: prevent peer transport count overflow")

Reading these abbrevations (xfrm/ah6, pppoe, sctp), I can't help
thinking "that sounds like a lot of non-standard networking protocols".

I think it emphasizes what I wrote here a while ago:
https://seclists.org/oss-sec/2026/q2/557

Attack surface reduction is a successful strategy to not be affected
by vulnerabilities. If you build your own kernels, you can avoid being
hit by many of the recent and future kernel vulnerabilities by
disabling functionalities you don't use. 

-- 
Hanno Böck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
