X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/08/22/5
Message-ID: <alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>
Date: Wed, 22 Aug 2018 16:16:34 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
To: oss-security@...ts.openwall.com
Subject: Re: Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?
Content-Type: text/plain; charset=utf-8

The CERT advisory at https://www.kb.cert.org/vuls/id/332928 provides a 
policy.xml example which does not appear to block PS2 and PS3, which 
are also entry points for reading Postscript.

Bob
-- 
Bob Friesenhahn
bfriesen@...ple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
