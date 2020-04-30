X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/04/30/2
Message-ID: <65d12083-a07c-b486-5f4e-365170833a1a@les7arts.com>
Date: Thu, 30 Apr 2020 14:11:22 +0200
From: Jacques Le Roux <jacques.le.roux@...7arts.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2019-12425] Apache OFBiz Host Header Injection
Content-Type: text/plain; charset=utf-8

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz 17.12.01

Description:
Apache OFBiz is vulnerable to Host header injection by accepting arbitrary hosts

Mitigation:
Upgrade to 17.12.03 or manually apply the commit at OFBIZ-11583
----

Credit:
Pradeep Jairamani <pradeepjairamani22@...il.com>

References:
https://ofbiz.apache.org/security.html

