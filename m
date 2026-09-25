X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/13
Message-ID: <16b89e0a-492d-840b-45ef-30713366b05e@apache.org>
Date: Fri, 25 Sep 2026 20:11:35 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82380: Apache Roller: CSRF protection bypass via self-generated salt validation 
Content-Type: text/plain; charset=utf-8

Severity: Important 
    CVSS 3.1: 8.1 (high) CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:H/A:H

Affected versions:

- Apache Roller 6.1.5

Description:

Cross-Site Request Forgery (CSRF) in Apache Roller 6.1.5 allows a remote attacker to cause a logged-in user to perform state-changing actions under the victim's authority, because the CSRF validation filters accept a request that does not submit the required salt token, validating instead against a value the server itself generated for the request. No optional feature or non-default configuration is required; any logged-in author or administrator is affected when induced to visit a crafted page. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which validates only the submitted salt and applies the same check to multipart forms.

Credit:

meifukun (finder)

References:

https://github.com/apache/roller/pull/167
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82380

