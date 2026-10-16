X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/28
Message-ID: <197ca060-6bce-b87f-f8ed-3da3aaa1697b@apache.org>
Date: Fri, 16 Oct 2026 03:35:21 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-76994: Apache Answer: Exposure of Hidden Question Metadata Through Public Answer Profiles 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Answer through 2.0.2

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in Apache Answer.



This issue affects Apache Answer: through 2.0.2.

Unauthenticated attackers could obtain metadata associated with hidden questions through public answer profiles.


Users are recommended to upgrade to version 2.0.3, which fixes the issue.

Credit:

sec-reex (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-76994

