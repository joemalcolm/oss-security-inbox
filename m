X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/14
Message-ID: <4887e405-633b-ddad-b0a7-73b7349b2880@apache.org>
Date: Fri, 06 Nov 2026 11:12:55 +0000
From: Benoit Tellier <btellier@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49939: Apache James: Negative IMAP ACL administer authorization bypass through JMAP protocol 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache James 3.9.0 before 3.9.1

Description:

In Apache James server prior version 3.9.1 improper Access Control List processing is exposed by the JMAP protocol which do not account for negative rules positionned by IMAP protocol.

This results in users being able to administer folders in JMAP despite having being explicitly denied the right to do so in IMAP.

Users are recommended to upgrade to version 3.9.1 which fixes this issue.

Credit:

Thanks mitchell from revampstudio.com.au for the report (finder)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49939

