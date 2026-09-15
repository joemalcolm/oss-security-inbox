X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/3
Message-ID: <cd18441d-2177-81c4-6d72-0fb5db684655@apache.org>
Date: Tue, 15 Sep 2026 17:22:39 +0000
From: Andor Molnar <andor@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59739: Apache ZooKeeper: Information disclosure via SetWatches reconnect replay 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.9.0 through 3.9.5
- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.8.0 through 3.8.6

Description:

Information disclosure via SetWatches reconnect replay in Apache ZooKeeper due to missing ACL check. An attacker can discover ACL-restricted paths by registering exists-watches on non-existent paths, then reconnecting after the paths are created with restricted ACLs. Issue is caused by incomplete fix for CVE-2024-23944 (ZOOKEEPER-4799). The fix added ACL checking to WatchManager.triggerWatch(). However, DataTree.setWatches() — the SetWatches/SetWatches2 reconnect replay handler — still calls watcher.process(event) with null ACL, bypassing the check entirely. It's important to note that only the path is exposed by this vulnerability, not the data of znode, but since znode path can contain sensitive information like user name or login ID, this issue is potentially critical.

Users are recommended to upgrade to version 3.9.6, 3.8.7 which fixes the issue.

Credit:

NGUYEN HONG QUAN <hongquanvp11@...il.com> (reporter)
n0mi1k <nomilksec@...il.com> (reporter)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59739

