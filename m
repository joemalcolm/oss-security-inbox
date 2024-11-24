Received: (qmail 1789 invoked by uid 550); 24 Nov 2024 17:44:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14232 invoked from network); 24 Nov 2024 11:52:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digikod.net;
	s=20191114; t=1732449154;
	bh=YjV6HXT6UcY9E6iUiQctzQbMrFAlVMbwVd+sFrtpG/c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=je+SwSI/zYYN7/H5HkbzDtVEJ0jUW6X47IpyIEyq4CWPUz34ogor2uu5biySfK9p4
	 H5UuNmHcE/Uhiuzr5Whfwum/7at1uv82pDWw6HXe16SoBmOlTiN+Fv6F9pnfp2q4t4
	 gkKO7wPX7MM5w5LMwULyJAeuKl2Vud1ZYXeu7hZ8=
Date: Sun, 24 Nov 2024 12:52:32 +0100
From: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To: Ali Polatel <alip@hexsys.org>
Cc: oss-security@lists.openwall.com, 
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Message-ID: <20241124.ahQuohdaiN2A@digikod.net>
References: <ykmy97joESH91bCHsZwXrM1OS3YcckmX8UcuxUQ6ogsxZjKI9lox0cTS-HuVaVUgn7fcmBdjRV4kdvZU3X5J6j8Ro1OJKzl1DHnka9f6g-M=@hexsys.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ykmy97joESH91bCHsZwXrM1OS3YcckmX8UcuxUQ6ogsxZjKI9lox0cTS-HuVaVUgn7fcmBdjRV4kdvZU3X5J6j8Ro1OJKzl1DHnka9f6g-M=@hexsys.org>
X-Infomaniak-Routing: alpha
Subject: Re: [oss-security] Article: State of Sandboxing in Linux

On Mon, May 20, 2024 at 09:42:38AM +0000, Ali Polatel wrote:
> Hello list,
> 
> I want to share an article I wrote on Linux Sandboxing:
> https://git.sr.ht/~alip/syd/tree/main/item/doc/toctou-or-gtfo.md

Nice article!  I somehow miss this email...

> 
> There's nothing new in there except something I discovered on Landlock which may be a bug or a feature.
> TL;DR Landlock allows you to chdir into a directory that's not allowlisted. That's it though, you can
> not list/read anything in there so I'd not say this is anything more than a potential info leak (as in
> you discovered the dir existed). That said, I am not quite sure.
> 
> Very small PoC for those who do no want to read the article:
> (-plib turns all seccomp sandboxing off so we apply a very simple landlock sandbox
> only allowing /usr, busybox is static linked)
> 
> ⇒ syd -plib -msandbox/lock:on -m allow/lock/read+/lib -m allow/lock/read+/usr busybox sh
> ~/src/syd/syd-3 $ cd /tmp
> /tmp $ busybox ls
> ls: can't open '.': Permission denied
> /tmp $
> 
> I could enter /tmp although that's not allowlisted by Landlock.

This is neither a bug nor a feature, but a current limitation
highlighted in the documentation:
https://docs.kernel.org/userspace-api/landlock.html#filesystem-flags
This limitation is due to the current path-based LSM hooks (e.g. also
used by AppArmor and Tomoyo), but we plan to address that:
https://github.com/landlock-lsm/linux/issues/9

Sandboxer tools using Landlock may mislead users to think this kind of
access may be denied but if we take a look at the Landlock filesystem
access rights, none of them control path walk.  It should be noted that
Landlock still provides the required access rights to protect users'
data.  Only access to metadata cannot be controlled yet.

Thanks to incremental development, Landlock is gaining more and more
features with new kernel versions:
https://docs.kernel.org/userspace-api/landlock.html#previous-limitations
You can find more information about Landlock's development in the
related article:
https://landlock.io/talks/2024-06-06_landlock-article.pdf

> 
> Best regards,
> Ali Polatel
> 
> PS: Initially I've sent this e-mail using the wrong e-mail address (was not subscribed
> to the list), so this is a resend. I apologize if you end up receiving it twice.
