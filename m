X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/9
Message-ID: <3c468287-4cfe-0a86-ee6f-4202cc834348@apache.org>
Date: Tue, 03 Nov 2026 16:40:57 +0000
From: Andor Molnar <andor@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-100235: Apache ZooKeeper: ACL enforcement bypass allows unauthorized operations to commit after an ACL revocation 
Content-Type: text/plain; charset=utf-8

Severity: moderate 
    CVSS 4.0: 6.0 (medium) CVSS:4.0/AV:N/AC:L/AT:P/PR:L/UI:N/VC:N/VI:H/VA:N/SC:N/SI:N/SA:N

Affected versions:

- Apache ZooKeeper 3.9.0 through 3.9.6
- Apache ZooKeeper 3.8.0 through 3.8.7

Description:

Incorrect authorization due to a time-of-check to time-of-use (TOCTOU) race condition in the setACL request handling of Apache ZooKeeper.

When a node's ACL is changed via setACL, the pending change is not published to the server's outstanding change record for that node. Any request that is prepared (and authorized) after the setACL is submitted but before it commits is therefore checked against the previous, pre-revocation ACL, yet is applied to the data tree after the ACL change has taken effect. A client that currently holds a permission can use this window to perform operations requiring that permission through and after its revocation — for example, committing writes or deletes after losing write access, or re-granting itself full permissions, which persistently defeats the revocation. In deployments transitioning from the default OPEN_ACL_UNSAFE ACL to a restrictive ACL, any unauthenticated client can exploit this during the transition.

This issue affects Apache ZooKeeper up to and including 3.9.6. Users are recommended to upgrade to version 3.8.8 or 3.9.7, which fixes the issue.

Credit:

cunyi li <xiaoheihei1107@...il.com> (reporter)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-100235

