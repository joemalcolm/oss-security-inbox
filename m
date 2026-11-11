X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/22
Message-ID: <b214dfe7-349a-0f04-affb-5691bd5b91cb@apache.org>
Date: Wed, 11 Nov 2026 09:53:10 +0000
From: Joerg Hoh <joerghoh@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-123765: Apache Sling XSS: SLING-13406 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Sling XSS before 2.4.14

Description:

Improper neutralization of input during web page generation ('cross-site scripting') vulnerability in Apache Sling XSS. xssAPI.getStyleToken() accepts markup in unquoted urls.



This issue affects Apache Sling XSS: before 2.4.14.



Users are recommended to upgrade to version 2.4.14, which fixes the issue.

This issue is being tracked as SLING-13406 

Credit:

Github user @dpfkdlemtp (reporter)

References:

https://sling.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-123765
https://issues.apache.org/jira/browse/SLING-13406

