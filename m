X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/04/2
Message-Id: <20110604145329.d5e87709.michael.s.gilbert@gmail.com>
Date: Sat, 4 Jun 2011 14:53:29 -0400
From: Michael Gilbert <michael.s.gilbert@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: openssl timing attack
Content-Type: text/plain; charset=utf-8

Solar Designer wrote:
> I went to http://www.us-cert.gov/cas/signup.html to see if there's a
> public CERT mailing list I should be on in order to receive new
> Vulnerability Notes (that are being made public) with no delay (or at
> least with less delay).  Unfortunately, for Vulnerability Notes there
> appears to be an Atom feed only, no mailing list (which I'd prefer).
> Perhaps set one up?

As a practical matter, you could follow the Debian
secure-testing-commits mailing list [0] or check out the svn repo [1].
Updates to Mitre's CVE database are synced there twice a day.


Unfortunately, Mitre's databases pushes tend to have a couple day delay
built in.  I've been intending to convert to the NVD database, which
seems to get updated on exactly the disclosure date, but I haven't
gotten around to that yet.

Best wishes,
Mike

[0]http://lists.alioth.debian.org/cgi-bin/mailman/listinfo/secure-testing-commits
[1]svn://svn.debian.org/svn/secure-testing
