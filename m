X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/21/4
Message-ID: <bd6df701-ed3c-3619-ad4b-f941485877c8@apache.org>
Date: Tue, 21 Jul 2026 09:58:09 +0000
From: Chaokun Yang <chaokunyang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-64606: Apache Fory: Class-registration bypass through an auto-admitted SerializedLambda capturing interface 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Fory (org.apache.fory:fory-core) 0.5.0 before 1.4.0

Description:

Deserialization of untrusted data vulnerability that may allow class-registration checks to be bypassed during Java lambda deserialization. Only lambda capture class is affected


This issue affects Apache Fory: from before 1.4.0.

Users are recommended to upgrade to version 1.4.0, which fixes the issue.

Credit:

Charles Vosburgh (reporter)

References:

https://fory.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-64606

