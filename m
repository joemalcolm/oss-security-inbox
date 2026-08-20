X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/10
Message-ID: <ec1fab22-6076-c31e-a634-234ca76f124e@apache.org>
Date: Thu, 20 Aug 2026 14:20:56 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63016: Apache InLong: Ordinary users can create new packages 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache InLong 2.0.0 before 2.4.0

Description:

Uncontrolled Resource Consumption vulnerability in Apache InLong. Users could affect operational configuration or allow upload of non-official packages.

This issue affects Apache InLong: from 2.0.0 before 2.4.0.



Users are advised to upgrade to Apache InLong's  2.4.0 or cherry-pick [1] to solve it.

[1] 

 https://github.com/apache/inlong/pull/12095 https://github.com/apache/inlong/pull/11732

Credit:

Tycho Knight (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-63016

