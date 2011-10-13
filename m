X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/13/3
Message-ID: <20111013185122.GA5582@openwall.com>
Date: Thu, 13 Oct 2011 22:51:22 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: radvd 1.8.2 released with security fixes
Content-Type: text/plain; charset=utf-8

On Thu, Oct 13, 2011 at 12:42:42PM +0530, Huzaifa Sidhpurwala wrote:
> So from what i can see, the maximum harm which would occur if 
> privsep_init() fails, is that radvd would effectively run in 
> --singleprocess mode

I am an outside observer here (I haven't reviewed the code myself), but
doesn't the above amount to admin-configured privilege separation not
actually being enabled?  If so, this sounds like a security issue to me.

Alexander
