X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/7
Message-ID: <20260923133721.21ad72a7@moche20>
Date: Wed, 23 Sep 2026 13:37:21 +0200
From: Tomas Hoger <thoger@...hat.com>
To: Sam James <sam@...too.org>
Cc: oss-security@...ts.openwall.com
Subject: Re: GNU Emacs vulnerability upon opening arbitrary file
Content-Type: text/plain; charset=utf-8

On Thu, 20 Aug 2026 04:09:29 +0100 Sam James wrote:

> Eshel Yaron has shared an arbitrary code execution bug in GNU Emacs
> exploitable upon opening an file. It affects >= Emacs 28.1.
> 
> The reporter has a writeup at
> https://eshelyaron.com/posts/2026-08-06-emacs-arbitrary-code-execution-returns.html.
> It's from the same reporter as CVE-2024-53920 [0].
> 
> Thread on emacs-devel:
> * https://lists.gnu.org/archive/html/emacs-devel/2026-07/msg00453.html
> * https://lists.gnu.org/archive/html/emacs-devel/2026-08/msg00000.html
> 
> There's a workaround patch available for Emacs 31
> (https://cgit.git.savannah.gnu.org/cgit/emacs.git/commit/?h=emacs-31&id=8466eb44991707d128110bdc549fad14c8e1d61e)
> while on master it apparently had a bigger rework
> (https://cgit.git.savannah.gnu.org/cgit/emacs.git/commit/?id=c1337758a6c00e22e2a685e0556068fd73fa9a54).
> 
> In Gentoo, we backported the fix [1] down to 28.2.
> 
> [0] https://www.openwall.com/lists/oss-security/2025/02/26/2
> [1] https://bugs.gentoo.org/980616

CVE-2026-96269 was assigned to this issue yesterday.

-- 
Tomas Hoger / Red Hat Product Security

