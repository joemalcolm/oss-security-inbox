X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/05/08/2
Message-ID: <BFB17C16CEB8834FBCE8DCF6B3CFC7B601606FA5@SEAEMBX02.olympus.F5Net.com>
Date: Thu, 8 May 2014 06:43:38 +0000
From: Dolev Farhi <D.Farhi@...com>
To: "cve-assign@...re.org" <cve-assign@...re.org>, "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: CVE Request - Local File inclusion in Cobbler
Content-Type: text/plain; charset=utf-8

hi,

as reported in https://github.com/cobbler/cobbler/issues/939

A local file inclusion is possible by specifying full path to any desired file in the Kickstart value in Cobbler's WebUI in all versions.

Cobbler ease setup of network installation environments.

After informing cobbler team, a patch will be released in the next version of Cobbler to address this issue

Can a CVE please be assign to this?

tx






