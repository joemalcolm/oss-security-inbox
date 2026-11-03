X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/11
Message-ID: <6882d506-1b59-82e5-77d0-2cc658e81e09@apache.org>
Date: Tue, 03 Nov 2026 16:41:14 +0000
From: Andor Molnar <andor@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-100300: Apache ZooKeeper: Unauthenticated persistent denial of service via unvalidated quota-node data and paths crashing the transaction-apply thread 
Content-Type: text/plain; charset=utf-8

Severity: important 
    CVSS 4.0: 8.7 (high) CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N

Affected versions:

- Apache ZooKeeper 3.9.0 through 3.9.6
- Apache ZooKeeper 3.8.0 through 3.8.7

Description:

Improper handling of exceptional conditions in the quota subsystem of Apache ZooKeeper allows an attacker able to write under the /zookeeper/quota subtree — unauthenticated on default deployments, where that subtree is world-writable — to crash the server's critical request-processing thread and render the on-disk data directory permanently unbootable.

This issue affects Apache ZooKeeper up to and including 3.9.6. Users are recommended to upgrade to version 3.8.8 or 3.9.7, which fixes the issue.

Credit:

cunyi li <xiaoheihei1107@...il.com> (reporter)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-100300

