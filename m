X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/14
Message-ID: <d39991aa-014b-ccdd-9f59-f9de120a7c1e@apache.org>
Date: Sun, 05 Jul 2026 11:57:11 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-46591: Apache Camel: Camel-Neo4j: JSON property names from the CamelNeo4jMatchProperties header are interpolated into the Cypher WHERE clause without validation, allowing Cypher injection (incomplete remediation of CVE-2025-66169) 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-neo4j) 4.10.0 before 4.14.8
- Apache Camel (org.apache.camel:camel-neo4j) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-neo4j) 4.19.0 before 4.21.0

Description:

Improper Neutralization of Special Elements in Data Query Logic vulnerability in Apache Camel Neo4J component.

The camel-neo4j producer builds the Cypher WHERE clause for its match/retrieve and delete operations from the CamelNeo4jMatchProperties map. CVE-2025-66169 addressed Cypher injection through the property values by binding them as query parameters ($paramN), but the property names (the JSON keys of that map) were still concatenated into the query string verbatim in Neo4jProducer.retrieveNodes() and deleteNode(). A property name containing Cypher syntax therefore alters the structure of the executed query. Where a route maps untrusted input into the CamelNeo4jMatchProperties map - for example by passing a request body as the match map, or from a consumer that does not filter inbound Camel* headers - an attacker who controls the JSON key names can inject arbitrary Cypher and read, modify or delete any node or relationship in the Neo4j database. The CamelNeo4jMatchProperties header is itself Camel-prefixed and is filtered by the HTTP header-filter strategy, so a plain HTTP client cannot set it directly; the issue is reachable through routes that deliberately or inadvertently carry untrusted data into that header.
This issue affects Apache Camel: from 4.10.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.8. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.3. For deployments that cannot upgrade immediately, do not populate the CamelNeo4jMatchProperties map from untrusted input: validate or allow-list the property names (for example against ^[A-Za-z_][A-Za-z0-9_]*$) before the Neo4j producer, and ensure that any consumer feeding such a route filters inbound Camel* / camel* headers so the match header cannot be supplied by an external sender.

Credit:

Yu Bao from Paypal (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-46591.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-46591

