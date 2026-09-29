X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/26
Message-ID: <b2f62bd3-ab26-251d-4a6c-a7b179304f08@apache.org>
Date: Tue, 29 Sep 2026 13:44:05 +0000
From: Jean-Baptiste Onofré <jbonofre@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-97395: Apache Polaris: Allows authorized table writers to redirect server-side Iceberg FileIO requests to attacker-controlled endpoints using operation-scoped storage credentials 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Polaris before 1.8.0

Description:

Apache Polaris allows an authenticated principal with permission to create or update Iceberg table properties to set FileIO client settings such as s3.endpoint in table metadata.


In versions < 1.8.0, when Polaris performs server-side Iceberg operations, including commits and purges, it may use those settings to construct its (server-side) FileIO client. If the catalog storage configuration does not override the endpoint, Polaris can send storage requests to a host chosen by the table writer, using credentials scoped to the operation.




This can redirect server-side storage traffic and expose request authentication material to the chosen endpoint. Deployments are affected when table writers are not trusted to configure server-side storage endpoints.

Credit:

vignesh a <imavignesh27@...il.com> (reporter)

References:

https://polaris.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-97395

