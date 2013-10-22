X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/10/22/14
Message-ID: <CACYkhxhWrPZirqZt3B1eDJMMQ=jXy3-oP-J=MMwKQ+QC2OssnQ@mail.gmail.com>
Date: Wed, 23 Oct 2013 10:39:43 +1100
From: Michael Samuel <mik@...net.net>
To: oss-security@...ts.openwall.com
Subject: Re: RESEND: CVE Request: pwgen
Content-Type: text/plain; charset=utf-8

On 23 October 2013 08:50, Solar Designer <solar@...nwall.com> wrote:
> Michael, is the above correct?  If so, should Kurt reject CVE-2013-4443?
> I think so.

Yes, that was correct - if you generated 1 extremely long password
(rather than a ton of passwords) and made a histogram, there would be
no bias.
