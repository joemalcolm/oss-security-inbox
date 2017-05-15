X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/15/5
Message-ID: <20170515165657.GA25897@hal>
Date: Mon, 15 May 2017 18:56:57 +0200
From: Guido Berhoerster <guido+openwall.com@...hoerster.name>
To: oss-security@...ts.openwall.com
Cc: Yao Wei <mwei@...e.org>
Subject: Re: CVE-2017-8934 pcmanfm: single instance socket may be blocked by another user
Content-Type: text/plain; charset=utf-8

* Yao Wei <mwei@...e.org> [2017-05-15 17:37]:
> The socket placed in /tmp is predictable and public-writable. Therefore
> if one user placed a symlink to another socket instead of socket for
> another user then said another user will either be unable to use
> pcmanfm, or may send requests to the first user's pcmanfm.
> 
> This bug has been assigned to CVE-2017-8934 [1].  A fix has been
> committed to pcmanfm's git repository [2].  LXDE developers are
> working on a release which fixes the problem.
> 
> [1]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-8934
> [2]: https://git.lxde.org/gitweb/?p=lxde/pcmanfm.git;a=commitdiff;h=bc8c3d871e9ecc67c47ff002b68cf049793faf08

The "fix" is ifdef'd for glib >= 2.28.0, so the vulnerability
still exists when compiling against an older version of glib.
-- 
Guido Berhoerster
