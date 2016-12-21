X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/12/21/8
Message-ID: <20161221233015.27a0038d@redhat.com>
Date: Wed, 21 Dec 2016 23:30:15 +0100
From: Tomas Hoger <thoger@...hat.com>
To: Dawid Golunski <dawid@...alhackers.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: Nagios Core < 4.2.2 Curl Command Injection leading to Remote Code Execution [CVE-2016-9565]
Content-Type: text/plain; charset=utf-8

On Tue, 20 Dec 2016 17:12:58 -0200 Dawid Golunski wrote:

> Vulnerability:
> Nagios Core < 4.2.2  Curl Command Injection / Remote Code Execution

Your report should mention that this issue was in Snoopy:

https://sourceforge.net/projects/snoopy/

which was embedded in MagpieRSS, which was embedded in Nagios.

> CVE-2016-9565

It's the same issue as CVE-2014-5008:

http://seclists.org/oss-sec/2014/q3/176

-- 
Tomas Hoger / Red Hat Product Security
