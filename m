X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/16/1
Message-ID: <loom.20150216T104620-663@post.gmane.org>
Date: Mon, 16 Feb 2015 09:53:17 +0000 (UTC)
From: Damien Regad <dregad@...tisbt.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: XSS in MantisBT
Content-Type: text/plain; charset=utf-8

P Richards <paul@...> writes:

> 
> According to github
> https://github.com/mantisbt/mantisbt/commit/cabacdc2
> the fix referenced for CVE-2014-8986 has never been tagged to a 1.2.x 
> release.

It would help if you looked at the 1.2.x commit...

http://github.com/mantisbt/mantisbt/commit/e326b73a

$ git describe --contains e326b73a
release-1.2.18~27


