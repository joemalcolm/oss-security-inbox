X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/03/2
Message-ID: <20171102235647.GA22038@altlinux.org>
Date: Fri, 3 Nov 2017 02:56:47 +0300
From: "Dmitry V. Levin" <ldv@...linux.org>
To: oss-security@...ts.openwall.com
Subject: Re: tftpd-hpa - insecure chroot()
Content-Type: text/plain; charset=utf-8

On Thu, Nov 02, 2017 at 03:16:55PM +0300, gremlin@...mlin.ru wrote:
> Just look at this code and guess how it would be compiled on most
> systems:
> 
> ========================================
>     /* Chroot and drop privileges */
>     if (secure) {
>         if (chroot(".")) {
>             syslog(LOG_ERR, "chroot: %m");
>             exit(EX_OSERR);
>         }
> #ifdef __CYGWIN__
>         chdir("/");             /* Cygwin chroot() bug workaround */
> #endif
>     }
> ========================================
> 
> :-)

Sorry, why do you think that

	chdir(dir) == 0 && chroot(".") == 0

is any worse than

	chroot(dir) == 0 && chdir("/") == 0

assuming that you have control over your signal handlers and can ensure
they won't issue any chdir or chroot calls between these two calls?


-- 
ldv

Download attachment "signature.asc" of type "application/pgp-signature" (802 bytes)
