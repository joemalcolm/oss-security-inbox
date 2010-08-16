X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/08/16/4
Message-ID: <Pine.GSO.4.64.1008161312520.1035@faron.mitre.org>
Date: Mon, 16 Aug 2010 13:19:06 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: Minor security flaw with pam_xauth
Content-Type: text/plain; charset=utf-8


On Mon, 16 Aug 2010, Tim Brown wrote:

> I don't think this needs a CVE as I haven't found a useful way to exploit it
> but maybe someone on here will spot something I've missed.  Either way, I
> would have thought it should be fixed.

If the attacker can execute an 'extra' process in violation of 
RLIMIT_NPROC, then that would be technically a violation of the *intended* 
security policy, so it would count for CVE inclusion by itself - even if 
you can't manipulate the issue for code execution.  (Though somehow 
manipulating the xauth authority file may be fruitful to mess around with 
the display as root.)

Thoughts?

- Steve
