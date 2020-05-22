X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/05/22/5
Message-ID: <20200522135550.36ba17a4@jabberwock.cb.piermont.com>
Date: Fri, 22 May 2020 13:55:50 -0400
From: "Perry E. Metzger" <perry@...rmont.com>
To: Georgi Guninski <gguninski@...il.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: Short notes on qmail security guarantee
Content-Type: text/plain; charset=utf-8

On Fri, 22 May 2020 18:45:00 +0300 Georgi Guninski
<gguninski@...il.com> wrote:
> Hi,
> 
> Thanks for the info.
> 
> I am not professional admin, but does postfix require limits?

Postfix doesn't require them for remote exploitation security. The
master.cf and main.cf files, which ship with Postfix, do specify some
limits for performance tuning and to avoid denial of service.

> Do many widely used daemons need limits?

Not of the sort qmail apparently demands, no.

Perry
-- 
Perry E. Metzger		perry@...rmont.com
