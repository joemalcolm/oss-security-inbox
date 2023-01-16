X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/01/16/5
Message-ID: <6c44abe1-2c71-b6c7-db9d-af0f00e8be09@apache.org>
Date: Mon, 16 Jan 2023 09:25:56 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-43721: Apache Superset: Open Redirect Vulnerability 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

An authenticated attacker with update datasets permission could change a dataset link to an untrusted site, users could be redirected to this site when clicking on that specific dataset. This issue affects Apache Superset version 1.5.2 and prior versions and version 2.0.0.

Credit:

Positive Technologies (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2022-43721

