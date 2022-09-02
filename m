X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/02/5
Message-ID: <6971d523-a4b3-26d9-096e-a7e8a2c5b92a@apache.org>
Date: Fri, 2 Sep 2022 08:20:03 +0200
From: Jacques Le Roux <jleroux@...che.org>
To: oss-security@...ts.openwall.com
Subject: Apache OFBiz - Regular Expression Denial of Service (ReDoS) (CVE-2022-29158)
Content-Type: text/plain; charset=utf-8

Severity:
High

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz versions prior to 18.12.06

Description:
Apache OFBiz up to version 18.12.05 is vulnerable to Regular
Expression Denial of Service (ReDoS) in the way it handles URLs
provided by external, unauthenticated users.

Mitigation:
Upgrade to at least 18.12.06
or apply patches at https://issues.apache.org/jira/browse/OFBIZ-12599

Credit:
Tony Torralba and Joseph Farebrother from the GitHub CodeQL team

References:
http://ofbiz.apache.org/download.html#vulnerabilities

