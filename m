X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/15
Message-ID: <62bad9a9-f0f0-aee3-cd40-218076a217c0@apache.org>
Date: Mon, 14 Sep 2026 08:30:24 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-77147: Apache Syncope: Groovy Sandbox escape for empty CommandArgs 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 4.1.0-M0 through 4.1.2

Description:

Improper Control of Generation of Code ('Code Injection') vulnerability in Apache Syncope.

An administrator with adequate entitlements for Implementations can create a malicious Groovy Command class containing untrusted code in their CommandArgs static implementation, bypassing the Groovy security sandbox.

This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.7, from 4.1.0-M0 through 4.1.2.

Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

n0mi1k (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-77147

