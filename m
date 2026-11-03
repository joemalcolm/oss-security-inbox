X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/13
Message-ID: <74215235-1c57-28de-58bd-52cebef41513@apache.org>
Date: Tue, 03 Nov 2026 16:41:23 +0000
From: Andor Molnar <andor@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-115448: Apache ZooKeeper: Unbounded recursion in snapshot serialization allows a client to render the server unrecoverable 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 8.7 (high) CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N

Affected versions:

- Apache ZooKeeper 3.9.0 through 3.9.7
- Apache ZooKeeper 3.8.0 through 3.8.8

Description:

Uncontrolled recursion in Apache ZooKeeper. The server serializes its data tree to a snapshot by recursing one stack frame per znode level, with no depth bound. A client permitted to create znodes (the default root ACL is open) can build a chain of nested znodes deep enough that taking a snapshot exhausts the JVM stack and kills the snapshot thread; sizes stay within jute.maxbuffer, so existing limits do not prevent it. This is a denial of service that becomes persistent: on restart the server rebuilds the deep tree from its transaction log and fails again while taking the startup snapshot, so it does not return to service, and recovery can entail data loss. The same log affects a leader and its followers, so it can spread across an ensemble.

This issue affects Apache ZooKeeper 3.8.0 through 3.8.7 and 3.9.0 through 3.9.6. Users are recommended to upgrade to 3.8.8 or 3.9.7, which fix the issue. As a workaround, use ACLs and authentication to restrict znode creation rather than relying on the default open root ACL.

This issue is being tracked as ZOOKEEPER-5097 

Credit:

Sai Sreewathsa Kovalluri, Shon Babu, and Kannan K of Innspark Solutions (https://innspark.in/) (reporter)
Prasath Jayasundar & PayPal Cyber Security Team (reporter)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-115448
https://issues.apache.org/jira/browse/ZOOKEEPER-5097

