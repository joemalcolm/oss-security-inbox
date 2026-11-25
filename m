X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/25/3
Message-ID: <CAAwz41TW8T2nRj-8Gq+W0n=9JGbabXz3Yi8WAEywX4-k3j37uw@mail.gmail.com>
Date: Wed, 25 Nov 2026 10:52:54 +0400
From: Norbert Pócs <norbertp@...nssl.org>
To: Alan Coopersmith <alan.coopersmith@...cle.com>
Cc: oss-security@...ts.openwall.com, openssl-users <openssl-users@...nssl.org>
Subject: Re: OpenSSL: 4 Low severity fixes merged publicly: QUIC, X.509 (CRL processing) and TLS (DANE)
Content-Type: text/plain; charset=utf-8

On Tue, Nov 24, 2026 at 11:18 PM Alan Coopersmith <
alan.coopersmith@...cle.com> wrote:

> On 11/24/26 03:25, Norbert Pócs wrote:
> > OpenSSL Security Advisory [24th November 2026]
> > ==============================================
> >
> > The issues listed below have been fixed in the public openssl/openssl
> > repository on GitHub. Releases containing these fixes are scheduled
> > for 1st December 2026.
>
> I don't see CVE-2026-121481 in this list, though it was published last
> week:
>     https://www.cve.org/CVERecord?id=CVE-2026-121481


>
> Is that because the pull request is not yet merged?
>     https://github.com/openssl/openssl/pull/33652


Yes, exactly. We announce only what was merged since the previous weeks
digest. CVE-2026-121481 is still under review.


>
>
> (I know there was some public disagreement on severity level, with CISA
> first
>   giving it a CVSS 3.1 score of 9.8, before later dropping it to 5.9, while
>   https://tldrcve.com/openssl-encodeblock/ was suggesting it was low
> severity.)
>
> --
>          -Alan Coopersmith-                 alan.coopersmith@...cle.com
>           Oracle Solaris Engineering - https://blogs.oracle.com/solaris


--
Norbert

