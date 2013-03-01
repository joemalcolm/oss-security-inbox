X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/03/01/5
Message-ID: <20130301155037.GA7702@suse.de>
Date: Fri, 1 Mar 2013 16:50:37 +0100
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: CVE request: ruby-openid XML denial of service attack
Content-Type: text/plain; charset=utf-8

Hi,

ruby-openid is affected by a XML denial of service (Entity Expansion Attack / out of memory) attack
as recently described.

https://github.com/openid/ruby-openid/commit/a3693cef06049563f5b4e4824f4d3211288508ed
https://github.com/openid/ruby-openid/pull/43
https://bugzilla.novell.com/show_bug.cgi?id=804717

Ciao, Marcus
