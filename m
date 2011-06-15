X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/16/3
Message-ID: <20110615214906.GB25196@nekral.nekral.homelinux.net>
Date: Wed, 15 Jun 2011 23:49:06 +0200
From: Nicolas François <nicolas.francois@...traliens.net>
To: oss-security@...ts.openwall.com
Cc: Ludwig Nussel <ludwig.nussel@...e.de>, Ondřej Vašík <ovasik@...hat.com>
Subject: Re: /bin/su (was: CVE request -- coreutils -- tty hijacking possible in "su" via TIOCSTI ioctl)
Content-Type: text/plain; charset=utf-8

Hello,

On Wed, Jun 15, 2011 at 09:49:20AM +0200, Ludwig Nussel wrote:
> 
> Is there actually any serious distro that doesn't use PAM though?
> Those #ifdefs to keep old shadow compatibility makes the code rather
> ugly and hard to read. Maybe it's time to just rip out the old code
> and submit a clean, PAM only su to util-linux.

I still receive bug reports for shadow-utils for the non-PAM variant.
(bug I don't remember if these bugs were reported for su).
In my case, I would prefer to keep the su non-PAM variant as long as I
would support non-PAM variants for the other tools (or as long as I
support su).

Regarding distros without PAM, there might be gentoo to be counted in the
list (although PAM is enabled by default).

Kind Regards,
-- 
Nekral
