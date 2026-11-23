X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/30
Message-ID: <7f386597-9ec2-2b71-3c74-8b9bcda05e5b@apache.org>
Date: Mon, 23 Nov 2026 21:30:09 +0000
From: Ian Maxon <imaxon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108765: Apache Texera: Users can export results from workflows for which they do not otherwise have permissions for 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Texera 1.1.0-incubating before 1.3.0-incubating

Description:

Missing authorization in the workflow export service of Apache

Texera allows a logged-in user to potentially read the result

of a workflow for which they do not otherwise have permission for




This issue affects Apache Texera: from 1.1.0-incubating

before 1.3.0-incubating.



Users are recommended to upgrade to version 1.3.0-incubating, which

fixes the issue

Credit:

n0mi1k (finder)

References:

https://texera.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-108765

