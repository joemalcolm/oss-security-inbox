X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/7
Message-ID: <20261106094111.GF498269@qaa.vinc17.org>
Date: Fri, 6 Nov 2026 10:41:11 +0100
From: Vincent Lefevre <vincent@...c17.net>
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

On 2026-11-06 10:05:13 +0800, Matt Johnston wrote:
> On Thu, Nov 05, 2026 at 11:50:00PM +0100, Vincent Lefevre wrote:
> > This is not clear. Under Debian, the crypt(3) man page says:
> > 
> >   Upon error, crypt_r, crypt_rn, and crypt_ra write an invalid hash
> >   to  the  output field of their data argument, and crypt writes an
> >   invalid hash to its static storage area.   This  string  will  be
> >   shorter  than  13 characters, will begin with a ‘*’, and will not
> >   compare equal to setting.
> > 
> > So it seems that "*" could be a valid result in case of error.
> 
> Prior to ~2019 when the OpenSSH change was made, Debian
> would have shown a different manpage that only documents
> NULL for error [1]. 
> Changing system APIs is problematic!
> 
> https://www.man7.org/linux/man-pages/man3/crypt.3.html#RETURN_VALUE
> 
>    On success, a pointer to the hashed password is returned.  On
>    error, NULL is returned.

But note that
https://www.man7.org/linux/man-pages/man3/crypt.3.html#DESCRIPTION
also specifies:

  salt is a two-character string chosen from the set [a-zA-Z0-9./].

with an EINVAL error in this case.

And according to <https://sshhole.com/>, the $ character is used
in salt. So this usage is out of scope of the spec (and the man
page was apparently obsolete, because an error would have always
been expected with a $ in salt).

POSIX.1-2008 (referenced by the above man page), and still in the
2024 edition, is even stricter, with a "shall":

  The salt argument shall be a string of at least two bytes in length
  not including the null character chosen from the set: [same set]

https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/functions/crypt.html
https://pubs.opengroup.org/onlinepubs/9799919799/functions/crypt.html

(An implementation could specify what happens when other characters
are used, but other implementations may behave differently.)

-- 
Vincent Lefèvre <vincent@...c17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
