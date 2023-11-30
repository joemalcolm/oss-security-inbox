X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/11/30/5
Message-ID: <16acad3f-b909-c85f-bc41-2d81b5054ba8@apache.org>
Date: Thu, 30 Nov 2023 11:16:38 +0000
From: Cédric Damioli <cdamioli@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-49733: Apache Cocoon's StreamGenerator is vulnerable to XXE injection 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Cocoon 2.2.0 before 2.3.0

Description:

Improper Restriction of XML External Entity Reference vulnerability in Apache Cocoon.This issue affects Apache Cocoon: from 2.2.0 before 2.3.0.

Users are recommended to upgrade to version 2.3.0, which fixes the issue.

References:

https://cocoon.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-49733

