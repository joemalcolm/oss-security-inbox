X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/04/21/3
Message-ID: <51741C71.8000509@oracle.com>
Date: Sun, 21 Apr 2013 10:05:53 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
CC: Solar Designer <solar@...nwall.com>
Subject: Re: upstream source code authenticity checking
Content-Type: text/plain; charset=utf-8

On 04/20/13 01:39 PM, Solar Designer wrote:
> I just found this recent blog post by Allan McRae of Arch Linux:
>
> http://allanmcrae.com/2012/04/how-secure-is-the-source-code/
>
> Thank you for doing this, Allan!  Are you contacting the upstream
> authors to request that they start to properly sign their releases?
> (I've been doing that on some occasions, sometimes with success.)

Coming from one of the common upstreams (X.Org), it would really be
helpful if there was a "Best Practices" page we could reference, since
we've gotten a couple complaints that we're not doing enough, but not
concrete enough suggestions that we can go modify our release script to
implement them.   (Currently we include MD5, SHA1, & SHA256 checksums in
the release announcement e-mails, which we tell maintainers to pgp sign
with their own keys when sending - though unfortunately most of the
mailing list archives break the ability to verify when they mangle
email addresses to prevent spam harvesting from their archives.)

If there was a common standard, with instructions, we'd be far more
likely to spend the time to adopt it, than just a "make signatures
appear somewhere, in an unspecified format".

-- 
	-Alan Coopersmith-              alan.coopersmith@...cle.com
	 Oracle Solaris Engineering - http://blogs.oracle.com/alanc
