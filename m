X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/08/23/3
Message-ID: <CAJ_zFkL5wLrabBXB6JSUhxwG6UVmYrCYOJYhw1rBeC=3dAdF=g@mail.gmail.com>
Date: Wed, 22 Aug 2018 20:33:37 -0700
From: Tavis Ormandy <taviso@...gle.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?
Content-Type: text/plain; charset=utf-8

On Wed, Aug 22, 2018 at 2:17 PM Bob Friesenhahn <
bfriesen@...ple.dallas.tx.us> wrote:

> The CERT advisory at https://www.kb.cert.org/vuls/id/332928 provides a
> policy.xml example which does not appear to block PS2 and PS3, which
> are also entry points for reading Postscript.
>
>
I think (luckily) there's no magic that will invoke those, but I think
you're right, for completeness they should be disabled by default as well.

Tavis.

