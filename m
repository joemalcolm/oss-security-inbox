X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/01/18/2
Message-ID: <87hc3w72jw.fsf@mid.deneb.enyo.de>
Date: Sun, 18 Jan 2009 22:00:03 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: WebSVN
Content-Type: text/plain; charset=utf-8

WebSVN 2.0 does not properly implement access control checks, allowing
authenticated users to access files with known paths.

(This is fixed in version 2.1.  I think this feature was only included
in the 1.7 betas, and no released 1.x version before that.  Relevant
fixes are probably in r635, r636, r649.)
