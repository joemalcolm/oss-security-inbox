X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/07/06/10
Message-ID: <814193225.2088351278443278066.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 6 Jul 2010 15:07:58 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request for browser IFRAME/file download DoS
Content-Type: text/plain; charset=utf-8

This is more complicated than I wish to deal with. I'm going to defer this
one to MITRE.

Thanks.

-- 
    JB


----- "Kurt Seifried" <kurt@...fried.org> wrote:

> Denial of service in various browsers:
> 
> http://seclists.org/fulldisclosure/2010/Jul/69
> 
> Basically it opens a lot of iframes that point to a file download/run
> location, you get endlessly spammed with run/save/cancel, in the case
> of affected web browsers they become non-responsive and you need to
> kill them using task manager/etc.
> 
> Affected
> Firefox 3.6.4
> IE 8
> Safari 5.0 (7533.16)
> 
> Not affected:
> Chrome 5/6
> Opera 10
> 
> -- 
> Kurt Seifried
> kurt@...fried.org
> tel: 1-703-879-3176
