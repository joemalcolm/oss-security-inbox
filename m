X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/17
Message-ID: <931a6aac-fb8e-0d9b-a4ea-ed0aaabe34aa@apache.org>
Date: Fri, 25 Sep 2026 20:12:02 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82384: Apache Roller: Unauthenticated deserialization in the XML-RPC endpoint 
Content-Type: text/plain; charset=utf-8

Severity: Critical 
    CVSS 3.1: 9.8 (critical) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H

Affected versions:

- Apache Roller 6.1.5

Description:

Deserialization of Untrusted Data in Apache Roller 6.1.5 allows an unauthenticated remote attacker to cause deserialization of attacker-controlled bytes, because the XML-RPC endpoint accepts vendor extension types that are deserialized during request parsing, before authentication. The servlet is mapped unconditionally, so parsing occurs even when the global XML-RPC feature is set to disabled; no non-default configuration is required for this path. This can lead to remote code execution. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which disables the extension types and rejects requests when the XML-RPC feature is disabled.

Credit:

n0mi1k (finder)

References:

https://github.com/apache/roller/pull/171
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82384

