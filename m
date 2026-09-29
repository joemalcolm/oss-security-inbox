X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/23
Message-ID: <3c413416-5a5c-ab48-bc35-a72da5fac674@apache.org>
Date: Tue, 29 Sep 2026 11:27:35 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-78214: Apache DolphinScheduler: Actuator Endpoint Authentication Bypass via Percent-Encoded Paths 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache DolphinScheduler (org.apache.dolphinscheduler:dolphinscheduler-api) before 3.4.3

Description:

An authentication bypass vulnerability exists in the protection of Actuator endpoints. The application determines whether authentication is required by matching the incoming request path against protected Actuator paths. By sending a specially crafted request containing a percent-encoded path, a remote unauthenticated attacker can cause the security check to fail to recognize the request as targeting a protected endpoint.



As a result, the attacker may bypass authentication and access otherwise restricted Actuator endpoints. Successful exploitation may expose operational or configuration information and, depending on the enabled endpoints and application configuration, allow access to sensitive management functionality.



This issue affects Apache DolphinScheduler: before 3.4.3.



Users are recommended to upgrade to version 3.4.3, which fixes the issue.

Credit:

Xmirror Security Team (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-78214

