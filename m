X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/10/18/11
Message-ID: <1eccb0b8-f3fe-433f-b1c2-fa1327d22dae@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 18 Oct 2011 16:06:40 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: Ruby 1.9.2-p290 WEBrick::HTTPRequest X-Forwarded-*
Content-Type: text/plain; charset=utf-8

Please use CVE-2011-3624 for this.

Thanks.

-- 
    JB


----- Original Message -----
> Got my Ruby/Ruby on rails mixed up.
> 
> Various methods in WEBrick::HTTPRequest in Ruby 1.9.2-p290 and
> 1.8.7-p352 and earlier and do not validate the X-Forwarded-For,
> X-Forwarded-Host and X-Forwarded-Server headers in requests, which
> might
> allow remote attackers to inject arbitrary text into log files or
> bypass
> intended address parsing via a crafted header.
> 
> https://redmine.ruby-lang.org/issues/5418
> 
> Can we get a CVE for this please?
> 
> -Kurt Seifried / Red Hat Security Response Team
> 
> 
