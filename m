X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/10/17/3
Message-ID: <8a886780-1b10-6412-06bf-e61aef4a8a2c@chbi.eu>
Date: Tue, 17 Oct 2017 19:43:56 +0200
From: chbi@...i.eu
To: oss-security@...ts.openwall.com
Subject: Stored XSS vulnerability in ILIAS <= 5.2.8 and <= 5.1.20
Content-Type: text/plain; charset=utf-8

Hi,

I've discovered a security issue in ILIAS <= 5.2.8 and <= 5.1.20
(https://www.ilias.de)


A stored XSS vulnerability in the media object component allows an
authenticated user to inject JavaScript to gain administrator privileges.


Fix:
https://github.com/ILIAS-eLearning/ILIAS/commit/b2a4660afec1e87d41c83c8e381f549bc6dfc70f


The issue is fixed in ILIAS 5.2.9 and 5.1.21.

https://www.ilias.de/docu/goto_docu_pg_75377_35.html
https://www.ilias.de/docu/goto_docu_pg_75378_1719.html


I've requested a CVE ID (MITRE).

-- 
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc



Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
