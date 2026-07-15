X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/15/1
Message-ID: <65e58b83-3244-a135-d9c2-e7e470fea900@apache.org>
Date: Wed, 15 Jul 2026 05:15:06 +0000
From: Terence Monteiro <terencemo@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-35152: Apache Fineract: SQL injection in runreports endpoint 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Fineract through 1.14.0
- Apache Fineract 1.15.0 unaffected

Description:

A SQL Injection vulnerability exists in Apache Fineract's Report Execution API (runreports endpoint) in versions up to and including 1.14.0. Report parameter values are incorporated into the generated SQL query without sufficient validation, allowing an authenticated user with permission to run reports to inject arbitrary SQL via crafted parameter values. This can be leveraged to perform unauthorized access to data beyond what the report was designed to expose. Users are recommended to upgrade to a version containing the fix.

Credit:

JD Security Shenyi Team (finder)
Geo Chen (reporter)
Quac Tran (reporter)
Terence Monteiro (@terencemo) (remediation developer)
Ádám Sághy (@adamsaghy) (remediation reviewer)
Aleksandar Vidakovic (@vidakovic) (remediation reviewer)

References:

https://github.com/apache/fineract/pull/5980
https://fineract.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-35152

