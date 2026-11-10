X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/7
Message-ID: <704f2771950d75d2cecb50ba67f0e58a.squirrel@_>
Date: Tue, 10 Nov 2026 07:59:20 -0000
From: factoid@...ke.ru
To: oss-security@...ts.openwall.com
Subject: Rooting ISPs and Hosting Providers with Hyperglass
Content-Type: text/plain; charset=utf-8

https://hyperpwn.xyz/

Note: All the research, from hunting to exploitation was done by DS. All I
did was validate. Posting this on LET first, hopefully it spreads.

TLDR; hyperglass has OS code exec vulns which you can trivially turn into
pre-auth RCE. Many ISPs and hosting providers are vulnerable to it because
they expose their hyperglass instance to the internet

