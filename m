X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/07/24
Message-ID: <545D366F.9050703@redhat.com>
Date: Fri, 07 Nov 2014 22:15:27 +0100
From: Eric Blake <eblake@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: random number generators - rand(), random(), etc
Content-Type: text/plain; charset=utf-8

On 11/07/2014 09:49 PM, jb wrote:
> Hi,
> could you please take a look at this ?
> https://sourceware.org/ml/libc-alpha/2014-11/msg00143.html

Anything in particular we're supposed to look at?  Besides the obvious
fact that anyone using rand() or random() in a security-conscious
program should be shot, and therefore, any possible bug in the
implementation of these notoriously weak functions shouldn't have any
implication on programs that use secure random number sources?

-- 
Eric Blake   eblake redhat com    +1-919-301-3266
Libvirt virtualization library http://libvirt.org


Download attachment "signature.asc" of type "application/pgp-signature" (540 bytes)
