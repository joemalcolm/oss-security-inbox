X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/03/16
Message-ID: <5457C7B6.7050205@internot.info>
Date: Tue, 04 Nov 2014 05:21:42 +1100
From: Joshua Rogers <oss@...ernot.info>
To: oss-security@...ts.openwall.com
Subject: RE: strings /libbfd crash
Content-Type: text/plain; charset=utf-8

I'd like to expand on this:
http://openwall.com/lists/oss-security/2014/10/27/4
and mention that 'ihex.c' is also vulnerable to the same thing, as they
share the same code.

> :10010000214601360121470136007EFE09D2190140
> :100110002146017E17C0001FF5F16002148011928
> :10012000194E79234623965778239EDA3F01B2CAA7
> :100130003F0156702B5E712B722B732146013421C7
> :00000001Ff

is an example of code that will crash it.


