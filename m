X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/10/10/6
Message-ID: <20121010115913.1df9442e@eldamar.bigon.be>
Date: Wed, 10 Oct 2012 11:59:13 +0200
From: Laurent Bigonville <bigon@...ian.org>
To: oss-security@...ts.openwall.com
Subject: CVE request: sSMTP doesn't validate server certificates
Content-Type: text/plain; charset=utf-8

Hi,

It seems that sSMTP is not checking the server certificate when
connecting. This is quite annoying as one of the main ssmtp purpose is
to be used on satellite systems that could be connected to untrusted
networks.

This has been reported (with a proposed patch) to the Debian BTS (see
[0])

Could you please allocate a CVE number for this?

Cheers

Laurent Bigonville

[0] http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=662960
