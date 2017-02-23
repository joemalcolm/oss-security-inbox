X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/23/18
Message-ID: <a3beb7ec-c3e0-6506-cbbc-18a7f92eeca4@stoeckmann.org>
Date: Thu, 23 Feb 2017 19:10:51 +0100
From: Tobias Stöckmann <tobias@...eckmann.org>
To: oss-security@...ts.openwall.com
Subject: Re: util-linux 2.29.2 fixes CVE-2017-2616
Content-Type: text/plain; charset=utf-8

Hello,

as I have discovered the issue, I can confirm that su of util-linux as
well as shadow are affected.

I have supplied patches to both maintainers and the shadow patch has
been pushed now, too.

The code shares a common origin but differs slightly, which in fact made
the patch for shadow a bit trickier.

But as the code bases are so close to each other, I don't think that it
takes another CVE-ID for this one.



Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
