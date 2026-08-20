X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/17
Message-ID: <c94485bb-6c69-19ba-469c-bb8c65e6575b@apache.org>
Date: Thu, 20 Aug 2026 14:21:44 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63044: Apache InLong: Authenticated SSRF via POST /api/node/testConnection 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache InLong 2.0.0 before 2.4.0

Description:

Server-Side Request Forgery (SSRF) vulnerability in Apache InLong.  Any authenticated user (no admin role required) can cause the InLong Manager server to make outbound HTTP requests or TCP connections to
arbitrary internal hosts and ports.

This issue affects Apache InLong: from 2.0.0 before 2.4.0.



Users are advised to upgrade to Apache InLong's  2.4.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/pull/12130 .

Credit:

Geo (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-63044

