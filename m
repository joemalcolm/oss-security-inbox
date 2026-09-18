X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/18/14
Message-ID: <5e1ce331-46f3-f3fd-6b8a-6275754f2a9f@apache.org>
Date: Fri, 18 Sep 2026 15:31:27 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-91867: Apache Neethi: Remote policy fetch lacks a total timeout, allowing a slow server to hang the request indefinitely 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Neethi (org.apache.neethi:neethi) before 3.2.4

Description:

When Neethi fetches a remote policy reference, it only limits the time per read, not the whole transfer, so a server that trickles bytes slowly can keep the fetch alive indefinitely and tie up the calling thread (denial of service).
Users are recommended to upgrade to version 3.2.4, which fixes this issue.

Credit:

This issue was found using Claude agents to study the security of open-source projects (finder)

References:

https://ws.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-91867

