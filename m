X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/11/27/4
Message-ID: <add56994-a1d9-5545-dbb9-6a37ba4ea926@apache.org>
Date: Mon, 27 Nov 2023 09:44:33 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-43701: Apache Superset: Stored XSS on API endpoint 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset before 2.1.2

Description:

Improper payload validation and an improper REST API response type, made it possible for an authenticated malicious actor to store malicious code into Chart's metadata, this code could get executed if a user specifically accesses a specific deprecated API endpoint. This issue affects Apache Superset versions prior to 2.1.2. 
Users are recommended to upgrade to version 2.1.2, which fixes this issue.

Credit:

Nick Barnes, Praetorian Security Inc. (reporter)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-43701

