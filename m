X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/29
Message-ID: <27c86214-158a-8b69-b4c3-392e6f80c7c5@apache.org>
Date: Mon, 23 Nov 2026 21:29:30 +0000
From: Ian Maxon <imaxon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108368: Apache Texera: Missing authorization when the workflow compiling service resolves operator file paths 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Texera 1.1.0-incubating before 1.3.0-incubating

Description:

Missing authorization in the workflow compiling service of Apache

Texera allows a logged-in user to read the column names

of datasets they have not been given access to, and the header line of

files on the host that runs the service.



This issue affects Apache Texera: from 1.1.0-incubating

before 1.3.0-incubating.



Users are recommended to upgrade to version 1.3.0-incubating, which

fixes the issue

Credit:

n0mi1k (finder)

References:

https://texera.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-108368

