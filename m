X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/03/28/12
Message-Id: <1206708021.4858.106.camel@localhost.localdomain>
Date: Fri, 28 Mar 2008 13:40:21 +0100
From: Lubomir Kundrak <lkundrak@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: silc
Content-Type: text/plain; charset=utf-8


On Fri, 2008-03-28 at 13:36 +0100, Ludwig Nussel wrote:
> Hi,
> 
> This report about a buffer overflow in SILC was posted to bugtraq
> recently and doesn't seem to have a CVE number yet:
> http://www.coresecurity.com/?action=item&id=2206

By the way core security is wrong there. This can not be exploited into
arbitrary code execution, as it will crash on memcpy called with very
large (underflown negative) size argument.

-- 
Lubomir Kundrak (Red Hat Security Response Team)

