X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/20
Message-ID: <4e4d6d4c-9660-be96-9f24-1c137cf7cb92@apache.org>
Date: Sun, 13 Sep 2026 05:49:05 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-84179: Apache Storm Nimbus, Apache Storm UI: Disclosure of Unredacted Merged Daemon Configuration via the Topology Page 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Storm Nimbus (org.apache.storm:storm-server) 3.0.0 before 3.1.0
- Apache Storm UI (org.apache.storm:storm-webapp) 3.0.0 before 3.1.0

Description:

Description

  getTopologyPageInfo merged the Nimbus daemon configuration with the topology's own configuration and returned the result without redaction in the topology_conf field of TopologyPageInfo. The Storm UI copied that value verbatim into the configuration field of GET /api/v1/topology/{id} and of the corresponding metrics endpoint.

  Where the cluster is configured with them, the merged map includes storm.zookeeper.auth.payload, which Storm's own documentation directs operators to keep in storm-cluster-auth.yaml under permissions that deny access from workers, together with the keystore and truststore passwords for the Thrift, Netty and ZooKeeper TLS configuration, and any plugin key whose name denotes a secret.

  getTopologyPageInfo is a topology read-only operation. Under SimpleACLAuthorizer a principal listed in topology.readonly.users or topology.readonly.groups could therefore read daemon credentials that the dedicated cluster configuration API, getNimbusConf, redacts and that is gated on nimbus.users instead. The sibling operations that exist to serve configuration were masked; the topology page, which merges in strictly more daemon state, was not.

  Mitigation

  Upgrade to 3.1.0, where credential-bearing values are masked before any configuration is served over the Nimbus API.

  Users who cannot upgrade immediately should remove any principal that is not trusted with cluster credentials from topology.readonly.users, topology.readonly.groups, topology.users and topology.groups, and should rotate the ZooKeeper authentication payload and any TLS keystore or truststore passwords that were reachable through the topology page.

  Credit
Wanxin Yin (yaklang.io) reported this issue to the Apache Security Team.

Credit:

Wanxin Yin (yaklang.io) (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-84179

