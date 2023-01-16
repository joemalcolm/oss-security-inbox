X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/01/16/2
Message-ID: <7e07bfc9-ed8b-0b92-6f04-724638701e40@apache.org>
Date: Mon, 16 Jan 2023 09:14:35 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-43718: Apache Superset: Cross-Site Scripting vulnerability on upload forms 
Content-Type: text/plain; charset=utf-8

Description:

Upload data forms do not correctly render user input leading to possible XSS attack vectors that can be performed by authenticated users with database connection update permissions. This issue affects Apache Superset version 1.5.2 and prior versions and version 2.0.0.

Credit:

Positive Technologies (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2022-43718

