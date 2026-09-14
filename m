X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/10
Message-ID: <a930df74-2eea-92e2-80ba-fc6530801715@apache.org>
Date: Mon, 14 Sep 2026 08:24:47 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73579: Apache Syncope: Non-recursive Any search could skip Realms restrictions 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-persistence-common) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-persistence-common) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core:syncope-core-persistence-common) 4.1.0-M0 through 4.1.2

Description:

Incorrect Authorization vulnerability in Apache Syncope.



Any search requests are transformed into SQL, Neo4J or Elasticsearch / Opensearch queries, depending on the actual deployment configuration.
An important component of such transformation is the Realms filter, which ensures that the search results are matching the requester's permissions.
For non-recursive search requests it is possible that such Realms filter is rendered as empty, thus voiding any restriction on requester privileges.





This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.7, from 4.1.0-M0 through 4.1.2.


Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

n0mi1k (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73579

