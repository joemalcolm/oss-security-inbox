X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/2
Message-ID: <caf4f410-0d32-6925-37e9-a7c83035bf32@apache.org>
Date: Mon, 27 Jul 2026 17:58:08 +0000
From: Robert Lazarski <robertlazarski@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66713: Apache Axis2/Java: deserialization of untrusted Data 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Axis2/Java through 2.0.0

Description:

Deserialization of Untrusted Data (CWE-502) in the Tribes-based clustering component

  in Apache Software Foundation Apache Axis2/Java through 2.0.0 on Apache Tomcat

  (only when Tribes clustering is enabled, which is off by default) allows an

  unauthenticated remote attacker with network access to the clustering port to

  execute arbitrary code via a crafted serialized Java object delivered to the cluster

  channel and deserialized in

  org.apache.axis2.clustering.tribes.Axis2ChannelListener#messageReceived. Users are

  recommended to upgrade to version 2.0.1, which fixes this issue by removing the

  clustering feature entirely.

Credit:

liuhuajin of Huawei (finder)

References:

https://github.com/apache/axis-axis2-java-core/commit/e6f53b230bddcb40577c84ff290ba51e7265fa15
https://axis.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66713

