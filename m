X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/11/15
Message-ID: <20160311175634.19159812@pc1>
Date: Fri, 11 Mar 2016 17:56:34 +0100
From: Hanno Böck <hanno@...eck.de>
To: cve-assign@...re.org, oss-security@...ts.openwall.com
Subject: Re: ProFTPD before 1.3.5b/1.3.6rc2 uses 1024 bit Diffie Hellman parameters for TLS even if user sets manual parameters
Content-Type: text/plain; charset=utf-8

On Fri, 11 Mar 2016 11:49:48 -0500 (EST)
cve-assign@...re.org wrote:

> > The release notes[1] are confusing, as they mention only problems
> > with keys smaller than 2048 bit, but I was also able to reproduce
> > this issue with 4096 bit keys.
> > [1] http://proftpd.org/docs/RELEASE_NOTES-1.3.5b  
> 
> We are not sure why this would be confusing.

Yes, I also noted now that this refers to an unrelated issue.

The DH issue was not mentioned in the release notes at first, now the
author has changed that.

-- 
Hanno Böck
https://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Content of type "application/pgp-signature" skipped
