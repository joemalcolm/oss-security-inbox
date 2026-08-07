X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/07/4
Message-ID: <adf50908-1468-af58-f69b-8070a1531653@apache.org>
Date: Fri, 07 Aug 2026 07:39:30 +0000
From: Chaokun Yang <chaokunyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-71559: Apache Fory: Uncaught panic (remote DoS) in Go meta-string decoder from untrusted metadata 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Fory 0.16.0 before 1.5.0

Description:

Deserialization of Untrusted Data vulnerability in the Go implementation of Apache Fory allows an attacker to cause a denial of service by supplying crafted data containing malformed type metadata, which triggers an uncaught panic.

This issue affects Apache Fory: from 0.16.0 before 1.5.0.  Users of other language implementations are not affected.

Users are recommended to upgrade to version 1.5.0, which fixes the issue.

Credit:

Zhixi "Jace Sun", independent security researcher (reporter)

References:

https://fory.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-71559

