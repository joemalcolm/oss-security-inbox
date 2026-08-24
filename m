X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/24/3
Message-ID: <87jypgxf1g.fsf@gentoo.org>
Date: Mon, 24 Aug 2026 06:28:59 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Re: Re: Emacs zero-click local command execution via TRAMP
Content-Type: text/plain; charset=utf-8

nightmare.yeah27@...ecat.org writes:

> Emacs has no security releases; do we have any idea if this will
> be fixed in Emacs 31?

I believe so.

Backports we've done downstream anyway:

* 27.2: https://gitweb.gentoo.org/proj/emacs-patches.git/tree/emacs/27.2/17_all_tramp.patch
* 28.2: https://gitweb.gentoo.org/proj/emacs-patches.git/tree/emacs/28.2/21_all_tramp.patch
* 29.4: https://gitweb.gentoo.org/proj/emacs-patches.git/tree/emacs/29.4/10_all_tramp.patch
* 30.2: https://gitweb.gentoo.org/proj/emacs-patches.git/tree/emacs/30.2/05_all_tramp.patch
* 31.1_rc1: https://gitweb.gentoo.org/proj/emacs-patches.git/tree/emacs/31.1_rc1/01_all_tramp.patch

sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
