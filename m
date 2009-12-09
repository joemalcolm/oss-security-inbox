X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/12/09/2
Message-Id: <200912092203.56421.eren@pardus.org.tr>
Date: Wed, 9 Dec 2009 22:03:56 +0200
From: Eren Türkay <eren@...dus.org.tr>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: Piwik <= 0.4.5 Cookie Unserialize() Vulnerability
Content-Type: text/plain; charset=utf-8

Hello,

Piwik is an open source web analytics software program used by various 
sites.

Stefan Esser found a vulnerability in Piwik, which can allow arbitrary files 
to be written into writable locations on the webserver. He says, it is also 
possible to execute arbitrary PHP code directly in newer versions of Piwik.

The original advisory is here: 
http://www.suspekt.org/2009/12/09/advisory-032009-piwik-cookie-
unserialize-vulnerability/

I think, it is worth assigning a CVE.

Regards,
Eren
