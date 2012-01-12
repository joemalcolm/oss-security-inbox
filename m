X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/12/3
Message-ID: <20120112004407.GA13150@openwall.com>
Date: Thu, 12 Jan 2012 04:44:07 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: speaking of DoS, openssh and dropbear (CVE-2006-1206)
Content-Type: text/plain; charset=utf-8

Hi,

FWIW, the approach with per source IP address limits is also used in
ModSecurity's SecReadStateLimit and SecWriteStateLimit directives:

http://sourceforge.net/apps/mediawiki/mod-security/index.php?title=Reference_Manual#SecReadStateLimit

SecWriteStateLimit is now being talked about in context of slow read
attacks:

http://blog.spiderlabs.com/2012/01/modsecurity-advanced-topic-of-the-week-mitigation-of-slow-read-denial-of-service-attack.html

Alexander
