X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/17/2
Message-ID: <8b244a2b-5079-02db-135d-f584af57add3@apache.org>
Date: Mon, 17 Apr 2023 09:57:11 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-25504: Apache Superset: Possible SSRF on import datasets 
Content-Type: text/plain; charset=utf-8

Description:

A malicious actor who has been authenticated and granted specific permissions in Apache Superset may use the import dataset feature in order to conduct Server-Side Request Forgery
attacks and query internal resources on behalf of the server where Superset
is deployed. This vulnerability exists in Apache Superset versions up to and including 2.0.1.

Credit:

Alexey Sabadash, VK (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-25504

