X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/04/11
Message-ID: <AANLkTin7rEnGm0bhar732k3GG1Q3ARmwzX3ZbrUMSz1Y@mail.gmail.com>
Date: Thu, 3 Mar 2011 22:46:51 -0500
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Cc: "Dmitry V. Levin" <ldv@...linux.org>
Subject: Re: Suid mount helpers fail to anticipate RLIMIT_FSIZE
Content-Type: text/plain; charset=utf-8

>
> One more option is to replace /etc/mtab regular file with a symlink to
> /proc/mounts, thus making any /etc/mtab editing unneeded.
>
>

This is a very good point.  I'm not sure why /etc/mtab exists anymore
given /proc/mounts is a more reliable source for this information.

-Dan
