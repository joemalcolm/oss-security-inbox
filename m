X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/10/05/13
Message-ID: <20161005193254.7a46fc48@pc1>
Date: Wed, 5 Oct 2016 19:32:54 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request - multiple ghostscript -dSAFER sandbox problems
Content-Type: text/plain; charset=utf-8

On Wed, 5 Oct 2016 10:09:07 -0700
Tavis Ormandy <taviso@...gle.com> wrote:

> Ahh, no, I was right - it's using libgs, and the same issues apply
> there.

To clarify the confusion here:
I didn't see ghostscript as a dependency and saw libspectre for ps
rendering. But libspected itself uses ghostscript, so it seems it's
just a wrapper around it.

-- 
Hanno Böck
https://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

Content of type "application/pgp-signature" skipped
