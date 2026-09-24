X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/24/17
Message-ID: <3b0516a9-4abc-0c72-3398-d15e75de922d@apache.org>
Date: Thu, 24 Sep 2026 22:25:29 +0000
From: Daniil Kirilyuk <dakirily@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-92609: Apache Qpid Broker-J: Missing HTTP-session renewal after successful authentication 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Broker-J (org.apache.qpid:qpid-broker-plugins-management-http) through 10.1.0

Description:

Session fixation in HTTP management authentication allows remote attackers to gain unauthorized access to an authenticated management session via reuse of a session identifier retained across successful authentication.

This issue affects Apache Qpid Broker-J: through 10.1.0.

Users are recommended to upgrade to version 10.1.1, which fixes the issue.

Credit:

Abhishek Kushwaha (reporter)

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-92609

