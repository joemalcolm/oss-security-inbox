X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/3
Message-ID: <au012Q6bt7dL_WMR@ucc.asn.au>
Date: Fri, 6 Nov 2026 10:05:13 +0800
From: Matt Johnston <matt@....asn.au>
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

On Thu, Nov 05, 2026 at 11:50:00PM +0100, Vincent Lefevre wrote:
> On 2026-11-05 23:38:51 +0400, Loganaden Velvindron wrote:
> > It's unfortunate that some people are writing misleading statements
> > about a security problem in OpenSSH, especially on linkedin, despite
> > djm@ explaining that this is a WORKAROUND.
> 
> This is not clear. Under Debian, the crypt(3) man page says:
> 
>   Upon error, crypt_r, crypt_rn, and crypt_ra write an invalid hash
>   to  the  output field of their data argument, and crypt writes an
>   invalid hash to its static storage area.   This  string  will  be
>   shorter  than  13 characters, will begin with a ‘*’, and will not
>   compare equal to setting.
> 
> So it seems that "*" could be a valid result in case of error.

Prior to ~2019 when the OpenSSH change was made, Debian
would have shown a different manpage that only documents
NULL for error [1]. 
Changing system APIs is problematic!

https://www.man7.org/linux/man-pages/man3/crypt.3.html#RETURN_VALUE

   On success, a pointer to the hashed password is returned.  On
   error, NULL is returned.

Cheers,
Matt

[1] https://salsa.debian.org/debian/manpages/-/commit/c56791e95a0759d58ded54150466f207c7cf3322
The current manpage comes from libxcrypt (libcrypt-dev package) rather than manpages-dev package.
