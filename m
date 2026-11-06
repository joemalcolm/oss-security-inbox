X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/18
Message-ID: <aded3e1b-363c-d2ce-c8e6-d251b037b4f0@apache.org>
Date: Fri, 06 Nov 2026 11:14:02 +0000
From: Benoit Tellier <btellier@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-85108: Apache James MIME4J: Denial of service due to Allocation of Resources Without Limits or Throttling 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache James Mime4J Core (org.apache.james:apache-mime4j-core) before 0.8.15
- Apache James Mime4J Dom (org.apache.james:apache-mime4j-dom) before 0.8.15

Description:

Allocation of Resources Without Limits or Throttling in Apache James Mime4J library prior version 0.8.15 allows Denial of Service upon parsing Mime messages.
Users are recommended to upgrade to version 0.8.15 which fixes the issue by enforcing new limits and providing better defaults.

This issue is being tracked as CWE-770 

Credit:

Mike Read (finder)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-85108
https://issues.apache.org/jira/browse/CWE-770

