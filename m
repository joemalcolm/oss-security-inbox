X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/1
Message-ID: <1bbd2f7b-0452-0eee-fc3a-7164cb76478c@apache.org>
Date: Thu, 30 Jul 2026 01:32:14 +0000
From: Jongyoul Lee <jongyoul@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44613: Apache Zeppelin: Cross-site request forgery in REST and WebSocket request handling 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Zeppelin 0.6.0 before 0.12.1

Description:

Cross-Site Request Forgery (CSRF) vulnerability in Apache Zeppelin. The default CORS configuration allowed cross-origin state-changing requests and accepted text/plain request bodies, allowing an attacker who lures an authenticated user to a malicious site to perform actions on the user's behalf through REST and WebSocket endpoints. This issue affects Apache Zeppelin versions 0.6.0 through 0.12.0. Users are recommended to upgrade to version 0.12.1, which fixes this issue.

Credit:

Reza (HazardLab Ninja) and Nir Zadok (finder)

References:

https://github.com/apache/zeppelin/pull/5229
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-44613

