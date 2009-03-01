X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/03/01/2
Message-ID: <87hc2d40xy.fsf@mid.deneb.enyo.de>
Date: Sun, 01 Mar 2009 18:17:45 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: CVE id request: znc
Content-Type: text/plain; charset=utf-8

ZNC before version 0.066 does not properly sanitize user input in
configuration updates, allowing authenticated users to increase their
privileges and gain shell access using a crafted POST request.

<http://en.znc.in/wiki/ChangeLog/0.066>
