X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/30
Message-ID: <a22c628e-6c06-e80f-178f-e5af5e78cfa1@apache.org>
Date: Fri, 16 Oct 2026 03:36:42 +0000
From: Enxin Xie <linkinstar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-79620: Apache Answer: Improper Authorization Allows Disclosure of Non-Public Question Metadata 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Answer through 2.0.2

Description:

Exposure of sensitive information through data queries vulnerability in Apache Answer.



This issue affects Apache Answer: through 2.0.2.



An improper authorization check in the similar-question search allowed authenticated users to view metadata of non-public questions.



Users are recommended to upgrade to version 2.0.3, which fixes the issue.

Credit:

n0mi1k (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-79620

