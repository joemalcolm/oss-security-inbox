X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/04/27/4
Message-ID: <4f613530-d896-24c0-c500-19ce517dbd3a@apache.org>
Date: Tue, 27 Apr 2021 21:00:03 +0200
From: "jleroux@...che.org" <jleroux@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2021-29200] RCE vulnerability in latest Apache OFBiz due to Java serialisation using RMI
Content-Type: text/plain; charset=utf-8

Severity:
High, possible RCE

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz versions prior to 17.12.07

Description:
Apache OFBiz has unsafe deserialization prior to 17.12.07 version
An unauthenticated user can perform a RCE attack

Mitigation:
Upgrade to at least 17.12.07
or apply one of the patches at https://issues.apache.org/jira/browse/OFBIZ-12216

Credit:
r00t4dm at Cloud-Penetrating Arrow Lab <r00t4dm@...il.com>
asd of MoyunSec V-Lab <root@...scode.cc>
赖涵 <1044309102@...com>

References:
http://ofbiz.apache.org/download.html#vulnerabilities

