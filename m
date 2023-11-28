X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/11/28/3
Message-ID: <fc678fd3-504c-9a25-98d9-8a94203e7e39@apache.org>
Date: Tue, 28 Nov 2023 16:08:27 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-42502: Apache Superset: Open Redirect Vulnerability 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset before 3.0.0

Description:

An authenticated attacker with update datasets permission could change a dataset link to an untrusted site by spoofing the HTTP Host header, users could be redirected to this site when clicking on that specific dataset. This issue affects Apache Superset versions before 3.0.0.

Credit:

Amit Laish – GE Vernova (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-42502

