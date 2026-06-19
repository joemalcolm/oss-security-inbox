X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/19/15
Message-ID: <3ce7da22-0acb-9ae4-ed36-dfc8e80a2be6@apache.org>
Date: Fri, 19 Jun 2026 06:56:50 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49872: Apache APISIX: Improper authentication in cas-auth plugin 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 3.0.0 through 3.16.0

Description:

Improper Authentication vulnerability in Apache APISIX.

When the cas-auth plugin is used in a route, an attacker can possibly authenticate itself with credentials from a different source.
This issue affects Apache APISIX: from 3.0.0 through 3.16.0.

Users are recommended to upgrade to version 3.17.0, which fixes the issue.

Credit:

lokerxxx (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-49872

