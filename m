Received: (qmail 28442 invoked by uid 550); 13 Jan 2026 16:14:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28293 invoked from network); 13 Jan 2026 12:53:59 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andrea Cosentino <acosentino@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e5b7e5df-7fbc-6f25-7c57-c3b14cdc8fae@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 13 Jan 2026 12:53:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-66169: Apache Camel: Cypher injection vulnerability in
 Camel-Neo4j component 

Severity: moderate=20

Affected versions:

- Apache Camel (org.apache.camel:camel-neo4j) 4.10.0 before 4.10.8
- Apache Camel (org.apache.camel:camel-neo4j) 4.14.0 before 4.14.3
- Apache Camel (org.apache.camel:camel-neo4j) 4.15.0 before 4.17.0

Description:

Cypher Injection vulnerability in Apache Camel camel-neo4j component.

This issue affects Apache Camel: from 4.10.0 before 4.10.8, from 4.14.0 bef=
ore 4.14.3, from 4.15.0 before 4.17.0

Users are recommended to upgrade to version 4.10.8 for 4.10.x LTS and 4.14.=
3 for 4.14.x LTS and 4.17.0.

This issue is being tracked as CAMEL-22719=20

Credit:

Ya0H4cker (finder)

References:

https://camel.apache.org/security/CVE-2025-66169.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-66169
https://issues.apache.org/jira/browse/CAMEL-22719

