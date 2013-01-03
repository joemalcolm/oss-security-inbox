X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/03/4
Message-ID: <50E5A574.6040809@fifthhorseman.net>
Date: Thu, 03 Jan 2013 10:36:20 -0500
From: Daniel Kahn Gillmor <dkg@...thhorseman.net>
To: oss-security@...ts.openwall.com, nginx-devel@...nx.org
Subject: nginx http proxy module does not verify peer identity of https origin server
Content-Type: text/plain; charset=utf-8

nginx offers the ability for its http proxy module to talk to an origin
server over https.  However, it does not verify the identity of the
origin server in this case, which leaves it subject to MITM attacks
between the proxy and the origin server.

Sadly, this appears to be unfixed for over a year after it was first
reported:

 http://trac.nginx.org/nginx/ticket/13

some patch review starts over here, but doesn't seem to reach any
resolution:

 http://mailman.nginx.org/pipermail/nginx-devel/2011-September/001182.html

As far as i can tell, there is no CVE assigned for this yet.

	--dkg


Download attachment "signature.asc" of type "application/pgp-signature" (1028 bytes)
