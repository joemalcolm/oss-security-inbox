X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/25
Message-ID: <96bf9321-2c83-bdcd-1288-e8ca4c5cfb94@apache.org>
Date: Mon, 23 Nov 2026 21:26:14 +0000
From: Ian Maxon <imaxon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-96296: Apache Texera: The DELETE /api/quota/deleteCollection/{eid} endpoint does not require authentication, allowing an unauthenticated user to delete workflow execution records. 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Texera 1.1.0-incubating before 1.3.0-incubating

Description:

An API which can allow a user to delete any workflow execution results is missing authentication. This means that any workflow result could be deleted by someone able to reach the Texera instance.



This issue affects Apache Texera: from 1.1.0-incubating before 1.3.0-incubating.



Users are recommended to upgrade to version 1.3.0-incubating, which fixes the issue.

Credit:

n0mi1k (finder)

References:

https://texera.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-96296

