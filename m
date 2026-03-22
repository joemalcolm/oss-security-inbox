Received: (qmail 28422 invoked by uid 550); 22 Mar 2026 01:17:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16077 invoked from network); 22 Mar 2026 00:43:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1774140186; x=1774806852; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=ZLyd73J3hMWn9haPdti4GWzMPRrRvQJgoF6PpFGYiA4=;
 b=eP1nC5TpDpW8PPMRTXD/WvcTssnoAwqYRoUAHRGses/xW3iYe49QF5wmeqhrYGoXcxBc52/2
  mgSLR92chQ7PZrN/U/47UbWpNuS7WB+yxMhpRUf4b5/BMFrGM/3aMawGA+Jc4Kb1onkXK0yMFe
  fkHT0K9NA5psiFJ30MwXeHdiO2RdbcrpGqFU4Mvg4vrXQMVFpEfQgheo5KyKO7fMnJGqlKiLld
  gma6i9XijpZ3jafSEsBdcEzqd6aaQaoFoSUcdgihZZJGFdKmuUqr4v/tNd4Tqi8pOEYNMPri2L
  p0vxcyd6ANsEx5iM1MvdqSINsKaOvEXRfVMLOnNgpks7vEUQ==
Date: Sun, 22 Mar 2026 01:43:05 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20260322004305.7mutUkqn@steffen%sdaoden.eu>
In-Reply-To: <20260321201652.9287-1-justin.swartz@risingedge.co.za>
References: <EEDF7B9C-89E2-4544-A33D-DBF2B0FED6E0.1@smtp-inbound1.duck.com>
 <20260321180013.GA20708@openwall.com>
 <20260321201652.9287-1-justin.swartz@risingedge.co.za>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-760-g6e9cf3e81e-dirty
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Buffer overflow in /bin/su from UNIX v4

Justin Swartz wrote in
 <20260321201652.9287-1-justin.swartz@risingedge.co.za>:
 |Sat, 21 Mar 2026 19:00:13 +0100, Solar Designer wrote: 
 |> On Sat, Mar 21, 2026 at 01:13:47PM -0400, kf503bla@...k.com wrote:
 |>> why assign cve to something irrelvent?
 |> 
 |> I guess because (ir)relevance isn't among criteria for (not) assigning a
 |> CVE, and because there may be value in having a non-ambiguous way to
 |> refer to historical vulnerabilities for illustration of how the current
 |> ones fit in historical context.
 |
 |Beyond the historical context, there is an argument to be made
 |for being aware of known defects in legacy codebases which have
 |been resurrected for use on modern resource-constrained hardware.

I do not disagree with that.
But regarding old Unix code the "great old ones upon which'
shoulders we stand" (and luckily so, that is) themselves say
... please let me just quote Douglas McIlroy, who said (on January
5th on TUHS):

  So somebody spotted a buffer overflow in v4.5, ironically in su.

  Overflowable buffers were common in those days. It was all too easy
  when programming to shrug one's shoulders and opine that nobody would
  ever want to input a 200-character line, say, so why bother writing
  the extra code to catch it? We did gradually learn that automatically
  generated input lines--particularly lines of code--could be much
  longer than any person would write, so buffer overflows that actually
  happened gradually got fixed.

  Dennis once fed a couple-of-thousand-byte line on standard input to
  everything in /bin. Crashes abounded, but so what? Wasn't a crash just
  an ungraceful way for a program to say "I can't handle this"? Not
  until the Morris worm (1988) did folks wake up to the real danger of
  overflows.

  Sometime after Dennis's casual experiment, a paper that announced the
  same results got the reaction, "So what else is new?" from the Unix
  room. It would be interesting to find the paper and compare its
  "shocked, shocked" presentation to that of the rediscovery posted on
  the cryptography mailing list.

 |For example, the RetroBSD [1] project provides a port of 2.11BSD
 |intended for PIC32 (MIPS) targets. There's also an actively
 |maintained RetroBSD fork, called DiscoBSD [2], which adds support
 |for STM32F4 (ARM Cortex-M4) targets and had its last release [3]
 |last month.
 |
 |And then there's Serge Vakulenko's LiteBSD [4], a 4.4BSD port to
 |PIC32.
 |
 |And who knows where Robert Nordier's port of UNIX V7, v7/x86 [5],
 |may be running?

The 2.11 BSD is also actively maintained; in fact patch #499 from
January is *huge* (largest in ~30 years?, entire 4.4BSD I/O
library ported back by ragge@ who maintains the PCC compiler).

 |While these projects might modernize parts of the kernel and/or
 |userland, there's always the possibility of bug-ridden code (and
 |bug-ridden assumptions) being inherited from their respective BSD
 |and/or Research UNIX lineage - as we've all seen with BSD derived
 |telnet server and client implementations recently.
 |
 |Regards,
 |Justin
 |
 |
 |--- Links ---
 |
 |[1] https://retrobsd.org
 |[2] http://discobsd.org
 |[3] https://github.com/chettrick/discobsd/releases/tag/DISCOBSD_2_6
 |[4] https://github.com/sergev/LiteBSD
 |[5] https://www.nordier.com/#v7x86
 --End of <20260321201652.9287-1-justin.swartz@risingedge.co.za>

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
