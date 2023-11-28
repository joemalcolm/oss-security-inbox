X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/11/28/5
Message-ID: <86140d54-a24f-6135-6f1c-d64a241a1006@apache.org>
Date: Tue, 28 Nov 2023 16:20:15 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-42505: Apache Superset: Sensitive information disclosure on db connection details 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset before 3.0.0

Description:

An authenticated user with read permissions on database connections metadata could potentially access sensitive information such as the connection's username.

This issue affects Apache Superset before 3.0.0.

Credit:

 Leonel John Erik Angel Torres (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-42505

