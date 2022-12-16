X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/12/17/1
Message-ID: <57f22782-ca9e-e289-0003-f2044fe5ff61@apache.org>
Date: Fri, 16 Dec 2022 22:38:23 +0000
From: Junkai Xue <jxue@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-47500: Apache Helix: Open redirect 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

URL Redirection to Untrusted Site ('Open Redirect') vulnerability in Apache Software Foundation Apache Helix UI component.This issue affects Apache Helix all releases from 0.8.0 to 1.0.4.



Solution: removed the the forward component since it was improper designed for UI embedding.

 User please upgrade to 1.1.0 to fix this issue.

Credit:

This issue was discovered by Everardo Padilla Saca (reporter)

References:

https://helix.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-47500

