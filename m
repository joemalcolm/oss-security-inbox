X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/24/2
Message-ID: <87622mgxgb.fsf@mid.deneb.enyo.de>
Date: Thu, 24 Jan 2013 21:03:48 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE ID Syntax Change - Call for Public Feedback
Content-Type: text/plain; charset=utf-8

> *) Option C (Year + arbitrary digits + check digit)
>
>    Examples: CVE-2014-1-8, CVE-2014-9999-3, CVE-2014-123456-5

If you add a check digit, please do not separate it with a hyphen.
The additional hyphen requires additional changes to parsers, changes
which could be avoided easily.
