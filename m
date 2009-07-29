X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/07/29/3
Message-ID: <20090729131509.GA28862@openwall.com>
Date: Wed, 29 Jul 2009 17:15:09 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: debian bug report on bind9 DoS
Content-Type: text/plain; charset=utf-8

Just in case anyone cares to have another confirmation:

On Wed, Jul 29, 2009 at 12:04:36AM +0200, Robert Buchholz wrote:
> The crash is not limited to configurations that allow updates.
> The ISC advisory states so as well, and I could reproduce the DoS on a 
> static named instance by removing the "$packet->sign_tsig(...)" line in 
> the exploit.

Confirmed on 9.3.5-P2 (removing the "$packet->sign_tsig(...)" line from
the exploit as above) with whatever patches we happened to have until
this latest fix.

Alexander
