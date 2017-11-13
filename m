X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/13/8
Message-ID: <20171113193304.GA27179@openwall.com>
Date: Mon, 13 Nov 2017 20:33:04 +0100
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: (linux-)distros list use statistics
Content-Type: text/plain; charset=utf-8

On Mon, Nov 13, 2017 at 08:13:05PM +0100, Kristian Fiskerstrand wrote:
> As far as I'm aware I haven't gotten access to edit the wiki page for
> publishing it.

Please feel free to create a page like:

http://oss-security.openwall.org/wiki/mailing-lists/distros/stats

You don't need any special access for that.

> The wikified stats based on the generated DocuWiki output is available
> in very basic style at the testing instance:
> 
> https://wiki.sumptuouscapital.com/doku.php?id=distros_stats

Thank you, Kristian!

This lists two very long embargo periods for two Linux kernel issues: 96
days for CVE-2017-7533 and 28 days for CVE-2017-1000255.  While this is
useful info, it does not reflect (linux-)distros' lists performance as
it includes embargo periods from prior to disclosure to those lists.
Also, we can't reliably know of such prior embargo periods, so our data
would be inconsistent, which is especially bad for calculating averages.

I think for our statistics collection, we should primarily use embargo
periods since disclosure to (linux-)distros' lists, and secondarily
since the possibly earlier embargo start dates when known (like you did
now).  Can you add such data?

Alexander
