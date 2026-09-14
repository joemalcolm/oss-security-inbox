X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/13
Message-ID: <0844c102-def2-a994-7fdf-1283e16baf64@apache.org>
Date: Mon, 14 Sep 2026 08:28:39 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-75030: Apache Syncope: Incomplete authorization checks for Group members deprovisioning 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope.core.idrepo:syncope-core-idrepo-logic) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core.idrepo:syncope-core-idrepo-logic) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core.idrepo:syncope-core-idrepo-logic) 4.1.0-M0 through 4.1.2

Description:

Missing Authorization vulnerability in Apache Syncope.



An administrator with task execution entitlements might be able to mass (de)provision group members, regardless of their group-related administration capabilities.





This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.7, from 4.1.0-M0 through 4.1.2.


Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

n0mi1k (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-75030

