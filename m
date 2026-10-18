X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/18/1
Message-ID: <dsfUBWNJSvyBapWNqIjD4w@lichtvoll.de>
Date: Sun, 18 Oct 2026 10:28:58 +0200
From: Martin Steigerwald <martin@...htvoll.de>
To: Solar Designer <solar@...nwall.com>, oss-security@...ts.openwall.com
Cc: oss-security@...ts.openwall.com, shvedov@....com, "David A. Wheeler" <dwheeler@...eeler.com>
Subject:  Re: Proposal: Add separate oss-security-vulnerability-reports mailing list (for AI vulnpocalypse)
Content-Type: text/plain; charset=utf-8

Greetings.

David A. Wheeler - 15.06.26, 03:17:50 CEST:
> I suspect we're going to see at least a two-orders-of-magnitude increase
> in the number of monthly reported vulnerabilities within the next two
> years. That's because AI is greatly reducing the effort needed to find
> vulnerabilities. Eventually it'll taper off, but I expect we'll have to
> weather the storm first. If things do get overwhelming, please
> reconsider.
> 
> That said: predicting the future is hard. I would be delighted to proven
> wrong :-).

There have been numerous attempts modeling the future. And lot of them 
where off by a huge amount.

It is speculative, but I got this train of thought:

Will it be ever increasing?

I'd expect a wave of AI reports, but once they are fixed, these will not 
be reported again. Then maybe after using even better models and agents 
there might be another wave of more difficult to find issues that are 
reported. But then these are fixed as well.

I would expect that a peak may be reached where AI only finds issues 
rarely anymore.

Eventually even individual commits will be scanned whether they introduce 
a security vulnerability before being accepted. This scanning at one time 
may not cover just the commit but the commit in combination with the 
complete application in compiled stage testing.

Also AI may help creating tons of test cases which automatically check for 
common vulnerabilities.

So in my point of view there is a number of variables which makes the 
coming trend quite unpredictable.

I am all for sensible grouping and project name in the beginning of 
subject line.

I am not intimidated yet by the amount of mails. It is still comparatively 
low compared to some Linux kernel related mailing lists. Of course if it 
should turn out that the amount of mails becomes ridiculous, then I'd like 
to come back to considering your suggestion.

Best,
-- 
Martin


