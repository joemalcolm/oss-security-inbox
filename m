X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/10/3
Message-ID: <fdd6b173-e351-a6c1-b216-30f0d7fc0c98@apache.org>
Date: Wed, 09 Sep 2026 20:24:17 +0000
From: Clebert Suconic <clebertsuconic@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49364: Apache Artemis, Apache ActiveMQ Artemis: Pre-Authentication Cluster Credential Exposure to Discovered Peers 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Artemis (org.apache.artemis:artemis-core-client) 2.50.0 through 2.56.0
- Apache Artemis (org.apache.artemis:artemis-server) 2.50.0 through 2.56.0
- Apache ActiveMQ Artemis (org.apache.activemq:artemis-core-client) 1.0.0 through 2.44.0
- Apache ActiveMQ Artemis (org.apache.activemq:artemis-server) 1.0.0 through 2.44.0

Description:

An unauthenticated network-adjacent attacker can leverage discovery to capture cluster administrative credentials during the initial cluster connection handshake.

This issue affects Apache Artemis: from 2.50.0 through 2.56.0; Apache ActiveMQ Artemis: from 1.0.0 through 2.44.0.



Users are recommended to upgrade to version 2.57.0, which fixes the issue.

Credit:

Domenico Francesco Bruscino (finder)

References:

https://artemis.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-49364

