X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/12/26/2
Message-ID: <58d8d5e1-bb9d-afb1-7606-593067da71fb@apache.org>
Date: Tue, 26 Dec 2023 10:17:25 +0000
From: Nicolas Malin <nmalin@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-50968: Apache OFBiz: Arbitrary file properties reading and SSRF attack 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache OFBiz through 18.12.10

Description:

Arbitrary file properties reading vulnerability in Apache Software Foundation Apache OFBiz when user operates an uri call without authorizations.

The same uri can be operated to realize a SSRF attack also  without  authorizations.

Users are recommended to upgrade to version 18.12.11, which fixes this issue.

Credit:

Yun Peng - 郭 运鹏 <puata123@...look.com> (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://ofbiz.apache.org/release-notes-18.12.11.html
https://issues.apache.org/jira/browse/OFBIZ-12875
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-50968

