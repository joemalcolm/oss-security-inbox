X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/9
Message-ID: <b08410a3-167f-fa37-166b-3a41032fad85@apache.org>
Date: Mon, 14 Sep 2026 08:24:01 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73470: Apache Syncope: Delegating users can grant unowned Roles 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-java) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-java) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-java) 4.1.0-M0 through 4.1.2

Description:

Improper Privilege Management vulnerability in Apache Syncope.





Delegations can be created or updated with Roles not owned by the delegating User, or not for the same Realm subtree under the delegation management was granted for.



This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.7, from 4.1.0-M0 through 4.1.2.


Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

n0mi1k (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73470

