X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/31/6
Message-ID: <20140331103208.GA15223@altlinux.org>
Date: Mon, 31 Mar 2014 14:32:09 +0400
From: "Dmitry V. Levin" <ldv@...linux.org>
To: oss-security@...ts.openwall.com
Subject: Re: pam_timestamp internals
Content-Type: text/plain; charset=utf-8

Hi,

On Mon, Mar 24, 2014 at 01:46:43PM +0100, Sebastian Krahmer wrote:
> When playing with some PAM modules for my own projects, I came
> across some implications of pam_timestamp (which is part of
> upstream linux-pam) that should probably be addressed.
> 
> Most importantly, there seems to be a path traversal issue:

Thanks, Sebastian!  The issue has been fixed in upstream linux-pam by commit
https://git.fedorahosted.org/cgit/linux-pam.git/commit/?id=Linux-PAM-1_1_8-32-g9dcead8


-- 
ldv

Content of type "application/pgp-signature" skipped
