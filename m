X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/14/6
Message-ID: <340449951.2448771284491907160.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 14 Sep 2010 15:18:27 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: xss in pecl-apc before 3.1.4
Content-Type: text/plain; charset=utf-8

Please use CVE-2010-3294.

Thanks.

-- 
    JB


----- "Hanno Böck" <hanno@...eck.de> wrote:

> http://pecl.php.net/package-changelog.php?package=APC&release=3.1.4
> 
> - Fixed potential XSS in apc.php (Pierre, Matt Chapman)
> 
> This is a minor issue as this usually doesn't get installed and should
> only be 
> used for debugging-purposes, but still, deserves a CVE.
> 
> -- 
> Hanno Böck		Blog:		http://www.hboeck.de/
> GPG: 3DBD3B20		Jabber/Mail:	hanno@...eck.de
> 
> http://schokokeks.org - professional webhosting
