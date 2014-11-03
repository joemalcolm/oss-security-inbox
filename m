X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/03/2
Message-ID: <20141103012316.GN5077@pc.thejh.net>
Date: Mon, 3 Nov 2014 02:23:17 +0100
From: Jann Horn <jann@...jh.net>
To: oss-security@...ts.openwall.com
Subject: Re: Re: strings / libbfd crasher
Content-Type: text/plain; charset=utf-8

On Sun, Nov 02, 2014 at 04:57:23PM -0800, Michal Zalewski wrote:
> Call stack exhaustion is generally non-exploitable
> in itself.

It can be exploitable in multithreaded programs though if there is
an unused stack allocation of at least one page further down in the
stack.

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
