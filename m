X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/1
Message-ID: <20261106000243.GE498269@qaa.vinc17.org>
Date: Fri, 6 Nov 2026 01:02:43 +0100
From: Vincent Lefevre <vincent@...c17.net>
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

On 2026-11-05 23:10:52 +0000, lists@...atla.org.uk wrote:
> > Upon error, crypt_r, crypt_rn, and crypt_ra write an invalid hash
> > to  the  output field of their data argument, and crypt writes an
> 
> If an error string is output does not : or multiple :: better
> express the aim of never seeing this as field content
> (because it is field separator) ?

Perhaps, but in any case, it is up to the application to check
error conditions, in particular that the result contains only
valid characters.

-- 
Vincent Lefèvre <vincent@...c17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
