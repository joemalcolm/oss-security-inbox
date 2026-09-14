X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/22
Message-ID: <5a8e0433-4f3b-e9b6-3a9d-8d19408b0b7b@apache.org>
Date: Mon, 14 Sep 2026 08:46:32 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86460: Apache Syncope: Cypher Injection via FIQL Search on Neo4j Persistence 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-persistence-neo4j) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-persistence-neo4j) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core:syncope-core-persistence-neo4j) 4.1.0-M0 through 4.1.2

Description:

Cypher injection vulnerability in the Neo4j persistence layer when processing some FIQL search conditions.



This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 through 4.0.7, from 4.1.0-M0 through 4.1.2.



Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

CyberLeo (finder)
Ho1aAs (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86460

