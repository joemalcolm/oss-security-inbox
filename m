X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/11/9
Message-ID: <87d2w6ljbd.fsf@mid.deneb.enyo.de>
Date: Mon, 11 Feb 2013 20:52:22 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Cc: Mike Miller <mtmiller@...e.org>
Subject: CVE request: openconnect buffer overflow
Content-Type: text/plain; charset=utf-8

Kevin Cernekee discovered that a malicious VPN gateway can send a very
long hostname/path (for redirects) or cookie list (in general), which
OpenConnect will attempt to write on a fixed length buffer.

Upstream commit:

<http://git.infradead.org/users/dwmw2/openconnect.git/commitdiff/26f752c3dbf69227679fc6bebb4ae071aecec491>

This needs a CVE name from 2012.
