X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/07/15/2
Message-ID: <80419b02-d26e-ed33-dc58-afecf4442ffb@les7arts.com>
Date: Wed, 15 Jul 2020 14:52:06 +0200
From: Jacques Le Roux <jacques.le.roux@...7arts.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-13923] IDOR in Apache OFBiz
Content-Type: text/plain; charset=utf-8

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
All versions < 17.12.04

Description:
IDOR vulnerability in the order processing feature from ecommerce component.

Mitigation:
Upgrade to 17.12.04 or manually apply the commit at OFBIZ-11836
----

Credit:
Harshit Shukla <harshit.shukz@...il.com>

References:
https://ofbiz.apache.org/security.html

