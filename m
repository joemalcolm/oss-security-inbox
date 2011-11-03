X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/03/4
Message-ID: <4EB2B99D.3000800@redhat.com>
Date: Thu, 03 Nov 2011 09:56:13 -0600
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: wordpress plugin timthumb before 2.0 remote code execution
Content-Type: text/plain; charset=utf-8

On 11/03/2011 05:23 AM, Hanno Böck wrote:
> http://markmaunder.com/2011/08/01/zero-day-vulnerability-in-many-wordpress-themes/
>
> Seems this never got a CVE. German newspage heise reports lots of
> hacked wordpress blogs, most likely due to this issue:
> http://www.heise.de/security/meldung/Tausende-WordPress-Blogs-zur-Verbreitung-von-Schadcode-genutzt-1370660.html
>
Yes I remember this one (I actually had a friend's WordPress get nailed
via this).

Fix: http://code.google.com/p/timthumb/

Please use CVE-2011-4106 for this issue.

-- 

-Kurt Seifried / Red Hat Security Response Team

