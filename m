X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/3
Message-ID: <306d96f0-e0eb-cb4a-96a4-633a71e14e10@apache.org>
Date: Wed, 11 Nov 2026 02:08:18 +0000
From: Rui Abreu <rabreu@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-94125: Apache Storm: Supervisor page discloses worker placement of other users' topologies 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Storm (org.apache.storm:storm-server) 2.0.0 before 3.2.0

Description:

Nimbus returns the worker placement of every topology running on a supervisor, including the host, port, owner and resource assignment of topologies the caller is not authorized to read. In a multi-tenant cluster, an authenticated user who is allowed to access Nimbus can learn where the workers of other users' topologies run. Users are recommended to upgrade to version 3.2.0, which fixes the issue.

Credit:

kta1kri, independent researcher (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-94125

