X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/02/8
Message-ID: <1838575478.1870741278096799133.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 2 Jul 2010 14:53:19 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: moin multiple XSS
Content-Type: text/plain; charset=utf-8

----- "Raphael Geissert" <geissert@...ian.org> wrote:

> Hi,
> 
> Multiple XSS vulnerabilities have been reported in moin.
> 
> References:
> http://moinmo.in/MoinMoinBugs/1.9.2UnescapedInputForThemeAddMsg
> http://bugs.debian.org/584809
> 
> Could a CVE be assigned?
> 
> Note that the original bug report only covered PageEditor.py, while
> upstream fixed multiple others at the same time. Not sure if you want to
> assign two different ids.
> 

I'm going to go with one ID, as they were all fixed at the same time.
CVE-2010-2487

>From what I can tell, the extra fixes are mentioned at the end of the moin
advisory, which is enough for me.

Thanks.

-- 
    JB
