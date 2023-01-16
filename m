X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/01/16/1
Message-ID: <ac40a15d-b99f-ab01-d219-2a6b455766e2@apache.org>
Date: Mon, 16 Jan 2023 09:08:13 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-43717: Apache Superset: Cross-Site Scripting on dashboards 
Content-Type: text/plain; charset=utf-8

Description:

Dashboard rendering does not sufficiently sanitize the content of markdown components leading to possible XSS attack vectors that can be performed by authenticated users with create dashboard permissions. This issue affects Apache Superset version 1.5.2 and prior versions and version 2.0.0.

Credit:

Positive Technologies (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2022-43717

