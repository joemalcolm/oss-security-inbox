X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/04/27/5
Message-ID: <b484727f-90d2-1a27-4bb2-c5e2b1579df6@apache.org>
Date: Tue, 27 Apr 2021 21:00:22 +0200
From: "jleroux@...che.org" <jleroux@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2021-30128] Unsafe deserialization in OFBiz
Content-Type: text/plain; charset=utf-8

Severity:
High, possible RCE

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz versions prior to 17.12.07

Description:
Apache OFBiz has unsafe deserialization prior to 17.12.07 version

Mitigation:
Upgrade to at least 17.12.07
or apply patches at https://issues.apache.org/jira/browse/OFBIZ-12212 & OFBIZ-12221

Credit:
Litch1 from the Security Team of Alibaba Cloud <litch1chk@...il.com>

References:
http://ofbiz.apache.org/download.html#vulnerabilities

