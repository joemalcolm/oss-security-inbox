X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/09/2
Message-ID: <3735f7c6-bed3-edd8-2304-a6932c84ff0f@apache.org>
Date: Mon, 09 Nov 2026 05:03:13 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82440: Apache Storm Nimbus: Submitter-Controlled Class Instantiation in Nimbus via a Fail-Open Scheduler Strategy Allowlist 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Storm Nimbus (org.apache.storm:storm-client) 3.0.0 before 3.1.0

Description:

Description

Nimbus instantiates the class named by a topology's `topology.scheduler.strategy` when scheduling it. The
allowlist intended to constrain that choice, `nimbus.scheduler.strategy.class.whitelist`, was treated as
"allow any class" when unset, and it had no entry in the shipped `defaults.yaml`, so unset was the shipped
state. An authenticated submitter could therefore cause Nimbus to instantiate any class on the Nimbus
classpath that has a no-argument constructor.

Storm's own production artifacts contain classes with side effects suitable for this: instantiating
`org.apache.storm.testing.InProcessZookeeper` starts a ZooKeeper server with its own threads and sockets
and nothing closes it, and `org.apache.storm.LocalCluster` behaves similarly. Repeated submissions
therefore consume threads, sockets and memory in the most privileged daemon in the cluster.

Mitigation

Upgrade to 3.1.0, where an unset allowlist means the strategies shipped with Storm rather than any class.

Note that this is a behaviour change: a cluster running an out-of-tree scheduler strategy without an
explicit allowlist will have those topologies refused until the class is added to
`nimbus.scheduler.strategy.class.whitelist`. The rejection message names the refused class and the
configuration key.

Users who cannot upgrade immediately should set `nimbus.scheduler.strategy.class.whitelist` explicitly to
the strategies they intend to permit.

Credit:

The ASF using Claude Agents (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82440

