X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/09/04/3
Message-ID: <87r38ze3vk.fsf@angela.anarc.at>
Date: Sun, 04 Sep 2016 17:45:03 -0400
From: anarcat@...ian.org (Antoine Beaupré)
To: oss-security@...ts.openwall.com
Subject: CVE ID request: certificate spoofing through crafted SASL message in inspircd, charybdis
Content-Type: text/plain; charset=utf-8

inspircd published 2.0.23 that fixes an issue with SASL
authentication. The details are here:

http://www.inspircd.org/2016/09/03/v2023-released.html

All versions are affected.

Upstream hasn't requested a CVE yet. I told them I would request one
from here on IRC.

It seems to also affect Charybdis, which fixed the issue in the
upcoming 3.5.3 release:

https://github.com/charybdis-ircd/charybdis/commit/818a3fda944b26d4814132cee14cfda4ea4aa824

A.

-- 
All governments are run by liars and nothing they say should be
believed.
                       - I. F. Stone
