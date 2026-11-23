X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/26
Message-ID: <f20c9b18-0e23-ab8a-1e6c-869199c224e2@apache.org>
Date: Mon, 23 Nov 2026 21:27:17 +0000
From: Ian Maxon <imaxon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-96298: Apache Texera: Missing authorization on the computing unit workflow websocket 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Texera 1.1.0 through 1.2.0

Description:

Missing Authorization vulnerability in the computing unit workflow websocket of Apache Texera (incubating) allows an authenticated user to view workflow results, control workflow executions, and run code in a computing unit they have not been granted. In local JVM and single-node Docker Compose deployments this is possible directly; in Kubernetes deployments it is possible from code running inside another computing unit in the cluster.



This issue affects Apache Texera : from 1.1.0 through 1.2.0.



Users are recommended to upgrade to version 1.3.0, which fixes the issue. Local JVM and Docker Compose deployments do not provide the full security model and should only be used by trusted users.

Credit:

n0mi1k (finder)

References:

https://texera.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-96298

