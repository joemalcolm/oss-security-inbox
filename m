X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/30/15
Message-ID: <4F75FB13.8080206@redhat.com>
Date: Fri, 30 Mar 2012 12:27:31 -0600
From: Jeff Law <law@...hat.com>
To: Solar Designer <solar@...nwall.com>
CC: oss-security@...ts.openwall.com
Subject: Re: glibc crypt(3), crypt_r(3), PHP crypt() may use alloca()
Content-Type: text/plain; charset=utf-8

On 03/30/2012 12:17 PM, Solar Designer wrote:
>
> Wow.  I thought we'd need to notify glibc developers more specifically
> for this to happen, which I did not do yet for lack of decision on what
> to do with the return value.
I think the right way to handle the return value is to return NULL for 
these cases.  It's posix complaint and the glibc crypt routines already 
return NULL for exceptional conditions.

Jeff

