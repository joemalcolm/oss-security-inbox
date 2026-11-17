X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/5
Message-ID: <04327532-5018-d67c-4892-b0b09f3a0dcc@apache.org>
Date: Tue, 17 Nov 2026 11:02:58 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-129448: Apache Roller: Unauthenticated deserialization in the XML-RPC endpoint (releases before 6.1.5) 
Content-Type: text/plain; charset=utf-8

Severity: Critical 
    CVSS 3.1: 9.8 (critical) CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H

Affected versions:

- Apache Roller 4.0.0 before 6.1.5

Description:

Deserialization of Untrusted Data in Apache Roller versions 4.0.0 through 6.1.4 allows an unauthenticated remote attacker to execute arbitrary code. The XML-RPC endpoint accepts vendor extension types and deserializes them before authenticating the requester.

This is the same vulnerability as CVE-2026-82384, which listed only Apache Roller 6.1.5 as affected. This issue is being actively exploited.

Users are recommended to upgrade to Apache Roller 6.1.6 or later, which disables the extension types and rejects XML-RPC requests when the XML-RPC feature is disabled.

Users who cannot upgrade right away should set "enabledForExtensions" to "false" in WEB-INF/web.xml, or remove the "/roller-services/xmlrpc" servlet mapping, and restart Roller. Disabling XML-RPC in the administration UI is not enough, because older versions deserialize the request before checking that setting.

Credit:

n0mi1k (finder)
Matt Raible (reporter)

References:

https://github.com/apache/roller/pull/171
https://lists.apache.org/thread/cc0jck13nb9vvcmzxzwotr6n16mx28z9
https://www.cve.org/CVERecord?id=CVE-2026-82384
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-129448

