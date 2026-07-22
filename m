X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/2
Message-ID:  <SYBPR01MB633623A03AB94483DD214CD1EEC12@SYBPR01MB6336.ausprd01.prod.outlook.com>
Date: Wed, 22 Jul 2026 03:27:57 +0000
From: Peter Gutmann <pgut001@...auckland.ac.nz>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: 432 Linux kernel CVEs
Content-Type: text/plain; charset=utf-8

Steffen Nurpmeso <steffen@...oden.eu> quotes:

 |As observed on social media[1], the Linux kernel
 |published 432 CVEs between 2026-07-19T09:09 and
 |2026-07-20T16:27 (in addition to the >40 other CVEs
 |already published this month alone):

Isn't that part of the malicious compliance approach,
https://news.risky.biz/risky-biz-news-the-linux-cna-mess/, where "almost any
bug might be exploitable to compromise the security of the kernel [...]
Because of this, the CVE assignment team is overly cautious and assign CVE
numbers to any bugfix that they identify"?  So the 432 CVEs could potentially
be 1 security problem and 432 "fixed a typo in a code comment"s.

>Then again i would also see the mentioned current flood under the Linu[sx]-
>specific "every bug is a security vulnerability"

Yup.  So without analysing every single one you can't really tell whether it
matters or not.  And if you're on something other than an x64 or Raspbian
distro, so very popular ones, you're probably not going to get an update any
time soon, if ever, anyway - the oldest kernel I'm running on a still-
currently-sold system is, let's see, "GNU/Linux 4.9.337-38".

>What i know for sure is that being a patch pumpkin and being responsible for
>several linux kernel series is surely a hard thing to do.

This is why so many systems are on "it's finally working, never touch this
again" kernels, they're often running on SoCs with a pile of special-case
peripherals that require extensive custom support so they never get updated
once they've been made mostly functional.

Peter.
