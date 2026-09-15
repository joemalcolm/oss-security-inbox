X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/5
Message-ID: <823ab636-192e-1ca6-b87d-fdd124f7ed06@apache.org>
Date: Tue, 15 Sep 2026 17:22:25 +0000
From: Andor Molnar <andor@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-79993: Apache ZooKeeper: Missing ACL check on deleteContainer opcode allows unauthorized deletion of any empty persistent/container znode 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.9.0 through 3.9.5
- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.8.0 through 3.8.6

Description:

The `deleteContainer` opcode (0x14/20) is processed without verifying the caller's ACL permissions, allowing any authenticated client to delete specific znodes in the data tree regardless of the ACL restrictions on the znode or its parent. This opcode is considered internal-only and the official client doesn't have API for it, but a client that can open a plain TCP session on the ZooKeeper client port (2181 by default) - with NO authentication and NO ACL permissions - can delete any empty persistent znode (including regular persistent nodes, container nodes, and TTL nodes) by issuing the raw protocol OpCode deleteContainer (20). The deleteContainer request path completely skips both the session check and the DELETE ACL check that are enforced by the regular delete (OpCode 2) path. This is an authorization bypass / ACL enforcement bug.

This issue affects Apache ZooKeeper: from 3.9.0 through 3.9.5, from 3.8.0 through 3.8.6.

Users are recommended to upgrade to version 3.9.6 or 3.8.7, which fixes the issue.

Credit:

K <sec-reports@...look.com> (reporter)
z f <tinkerzf@...il.com> (reporter)
布豪 <1958304602@...com> (finder)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-79993

