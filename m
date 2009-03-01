X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/03/01/4
Message-ID: <87ocwlxbmm.fsf@mid.deneb.enyo.de>
Date: Sun, 01 Mar 2009 20:54:09 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: CVE id request: tinydns crafted zone file cache poisoning vulnerability
Content-Type: text/plain; charset=utf-8

tinydns from djbdns version 1.05 and earlier incorrectly implements
DNS label compression, allowing malicious zone editors to inject
poisonous records into the additional section.

<http://article.gmane.org/gmane.network.djbdns/13833>
