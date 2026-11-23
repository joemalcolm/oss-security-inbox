X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/20
Message-ID: <65025e31-7fa0-0d8e-d14f-783bd77425fb@apache.org>
Date: Mon, 23 Nov 2026 18:33:33 +0000
From: Ali Risheh <aicam@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-112788: Apache Texera: Missing authentication on the Python virtual environment endpoints in non-Kubernetes deployments 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Texera 1.1.0-incubating before 1.3.0-incubating

Description:

Missing Authentication for Critical Function in Apache Texera (incubating).



The Python virtual environment (PVE) management endpoints of a computing unit are not authenticated by the application itself. In the local JVM and single-node Docker Compose deployments, which place no authenticating gateway in front of the services, these endpoints are reachable without credentials. The Kubernetes deployment gates them at the gateway, so only the Kubernetes deployment provides the full security model described in SECURITY.md.



This issue affects Apache Texera (incubating): from 1.1.0 through 1.2.0.



Users are recommended to use the Kubernetes deployment, which enforces the full security model, and to upgrade to 1.3.0-incubating, which documents that the local JVM and single-node Docker Compose deployments do not provide the full security model and should only be used by trusted users.

Credit:

Aleksandar Djordjevic (finder)

References:

https://texera.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-112788

