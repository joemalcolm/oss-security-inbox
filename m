X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/11/27/3
Message-ID: <aae46329-1847-01a5-95f0-6fa1d5672c0c@apache.org>
Date: Mon, 27 Nov 2023 09:39:08 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-42501: Apache Superset: Unnecessary read permissions within the Gamma role 
Content-Type: text/plain; charset=utf-8

Affected versions:

- Apache Superset before 2.1.2

Description:

Unnecessary read permissions within the Gamma role would allow authenticated users to read configured CSS templates and annotations.
This issue affects Apache Superset: before 2.1.2.
Users should upgrade to version or above 2.1.2 and run `superset init` to reconstruct the Gamma role or remove `can_read` permission from the mentioned resources.

Credit:

Miguel Segovia Gil (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-42501

