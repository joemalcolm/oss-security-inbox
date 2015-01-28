X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/28/6
Message-ID: <54C84744.6020401@gmail.com>
Date: Tue, 27 Jan 2015 18:19:48 -0800
From: Jonathan Brossard <endrazine@...il.com>
To: Qualys Security Advisory <qsa@...lys.com>
CC: oss-security@...ts.openwall.com
Subject: Re: GHOST gethostbyname() heap overflow in glibc (CVE-2015-0235)
Content-Type: text/plain; charset=utf-8

Dear Qualys team, dear list,

> From GHOST.c :
> ...
>   char name[10];
>   memset(name, '0', len);
>   name[len] = '\0';
> ...

I have been made aware off line that I have been working with an edited
version of GHOST.c : the original version has a name buffer of size
1024, which is indeed perfectly fine to copy 991 + 1 byte !

There is no stack overflow in the original GHOST.c code : my humble
appology for the noise :(

Best regards,

j-




Download attachment "signature.asc" of type "application/pgp-signature" (182 bytes)
