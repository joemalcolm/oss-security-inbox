X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/4
Message-ID: <33c6d1ab-e6df-eba0-77ac-04eec19d8c9c@apache.org>
Date: Tue, 15 Sep 2026 17:22:32 +0000
From: Andor Molnar <andor@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59969: Apache ZooKeeper: Improper validation of certificate with host mismatch in FIPS mode 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.9.0 through 3.9.5
- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.8.0 through 3.8.6

Description:

Apache ZooKeeper quorum TLS fails to enforce peer hostname verification in FIPS-mode deployments. When sslQuorum=true, zookeeper.fips-mode=true, ssl.quorum.hostnameVerification=true, and ssl.quorum.clientHostnameVerification=true are enabled, the Java SSLSocket quorum path accepts a CA-trusted peer certificate whose SAN does not match the connected host. A malicious or misissued peer certificate can therefore join quorum traffic, participate in leader election, and enter replication flows.



Users are recommended to upgrade to version 3.8.7 or 3.9.6, which fixes the issue.

Credit:

Erichen <chenyoulong20g@....ac.cn> (reporter)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59969

