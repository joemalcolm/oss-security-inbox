X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/3
Message-ID: <dfa46897-d984-b89d-1ad0-f5a4e827fd4a@apache.org>
Date: Fri, 16 Oct 2026 02:29:20 +0000
From: Li Yang <liyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-64610: Apache Kylin: Redis unsafe Java deserialization 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kylin 4..0.0 through 5.0.4

Description:

Deserialization of Untrusted Data vulnerability in Apache Kylin. Unsafe Java deserialization could happen from a broken external cache service.



This issue affects Apache Kylin: from 4 through 5.0.4.



Users are recommended to upgrade to version 5.0.5, which fixes the issue.

Credit:

Andrew Ridings <ridingsa@...il.com> (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-64610

