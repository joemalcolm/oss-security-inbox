X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/02/01/16
Message-ID: <20120201231302.GA9659@openwall.com>
Date: Thu, 2 Feb 2012 03:13:02 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: distros & linux-distros embargo period and message format
Content-Type: text/plain; charset=utf-8

On Wed, Feb 01, 2012 at 11:59:34PM +0100, Thomas Klausner wrote:
> While you're editing the wiki... it's probably obvious to everyone,
> but perhaps not, so a short sentence about the Subject header not
> being encrypted and thus visible to e.g. mail server admins might be a
> good idea.

Added:

"except that headers, including From and Subject, are not encrypted, so
you may want to avoid including security sensitive information in the
Subject."

Alexander
