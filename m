X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/3
Message-ID: <9517bd26-3585-96e2-5d12-d46b6f0b3500@apache.org>
Date: Tue, 08 Sep 2026 10:36:37 +0000
From: Sebastian Nagel <snagel@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-41869: Apache Nutch: Unauthenticated forced shutdown and job interruption in Nutch Server (Nutch REST API) 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Nutch 1.10 through 1.22

Description:

Missing Authorization, Improper Resource Shutdown and Job Interruption vulnerability in Apache Nutch Server  (Nutch REST API).



This issue affects Apache Nutch: from 1.10 through 1.22.



Users are recommended to upgrade to version 1.23, which removes the Nutch Server.
If an upgrade is not possible, user must restrict access to instances running the Nutch Service to trusted users only.
Please, also visit the  Apache Nutch security advisories https://nutch.apache.org/documentation/security/ .

This issue is being tracked as NUTCH-3165 

Credit:

The Apache Nutch Project Management Committee would like to thank Th1nk for reporting this issue. (reporter)

References:

https://nutch.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-41869
https://issues.apache.org/jira/browse/NUTCH-3165

