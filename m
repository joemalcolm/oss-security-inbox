X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/03/21/1
Message-ID: <ab4895c3-fe33-99c7-6182-0d4aa05fff32@les7arts.com>
Date: Sun, 21 Mar 2021 14:01:37 +0100
From: Jacques Le Roux <jacques.le.roux@...7arts.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2021-26295] RCE vulnerability in latest Apache OFBiz due to Java serialisation using RMI
Content-Type: text/plain; charset=utf-8

Severity:
High

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz versions prior to 17.12.06

Description:
Apache OFBiz has unsafe deserialization prior to 17.12.06.
An unauthenticated attacker can use this vulnerability to successfully take over Apache OFBiz.

Mitigation:
Upgrade to at least 17.12.06
or apply the patch at https://github.com/apache/ofbiz-framework/commit/af9ed4e/

Credit:
r00t4dm at Cloud-Penetrating Arrow Lab <r00t4dm@...il.com>
MagicZero from SGLAB of Legendsec at Qi'anxin Group.
Longofo at Knownsec 404 Team

References:
http://ofbiz.apache.org/download.html#vulnerabilities

