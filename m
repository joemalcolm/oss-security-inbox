X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/10
Message-ID: <5db00fa2-5bc2-22ea-20f6-4173d8e50fe4@apache.org>
Date: Fri, 25 Sep 2026 20:12:36 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82377: Apache Roller: Missing weblog authorization in XML-RPC Blogger/MetaWeblog handlers 
Content-Type: text/plain; charset=utf-8

Severity: Moderate 
    CVSS 3.1: 9.9 (critical) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H

Affected versions:

- Apache Roller 6.1.5

Description:

Missing Authorization in Apache Roller 6.1.5 allows an authenticated user to read, modify, or delete weblog content belonging to other weblogs through the legacy XML-RPC Blogger and MetaWeblog APIs, because the handlers authenticate the caller but do not verify the caller's permission on the weblog or entry actually affected. Only installations that enable the non-default global XML-RPC setting are affected; the per-weblog API flag defaults to enabled for UI-created weblogs. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which applies an explicit per-method permission check, or to keep the XML-RPC feature disabled.

Credit:

meifukun (finder)
n0mi1k (finder)
Ivan Iushkevich (Steph) (finder)

References:

https://github.com/apache/roller/pull/164
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82377

