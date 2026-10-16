X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/33
Message-ID: <03034508-1da9-5719-0e85-a47cbcf1e2b1@apache.org>
Date: Fri, 16 Oct 2026 03:38:38 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86589: Apache Answer: User Center integration does not revoke first-login sessions after central account suspension 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Answer through 2.0.2

Description:

Incorrect implementation of authentication algorithm vulnerability in Apache Answer.



This issue affects Apache Answer: through 2.0.2.



A flaw in the User Center login integration can cause a newly created external user session to omit its external identity, allowing subsequent requests to bypass central account suspension or deletion checks until the session
  expires or is revoked.



Users are recommended to upgrade to version 2.0.3, which fixes the issue.

Credit:

ascanner (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-86589

