X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/05/10
Message-ID: <edf6bdd6-a4ac-7101-cf74-609a57ac76ad@apache.org>
Date: Mon, 05 Oct 2026 07:11:49 +0000
From: Lukasz Lenart <lukaszlenart@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-104711: Apache Struts: OGNL injection in the legacy RESTful action mapper 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Struts 2.0.0 through 2.3.37
- Apache Struts 2.5.0 through 2.5.33
- Apache Struts 6.0.0 through 6.11.0
- Apache Struts 7.0.0 through 7.3.0

Description:

Improper neutralization of special elements used in an expression language statement ('Expression Language Injection') vulnerability in Apache Struts. If the application is configured to use the legacy RESTful action mapper, a crafted request can inject an OGNL expression that may lead to remote code execution. Struts 7 is affected only when the OGNL allowlist is disabled; it is enabled by default. Applications using the default action mapper, the restful2 mapper, or the Struts REST plugin are not affected.

This issue affects Apache Struts: from 2.0.0 through 2.3.37, from 2.5.0 through 2.5.33, from 6.0.0 through 6.11.0, from 7.0.0 through 7.3.0.

Users are recommended to upgrade to version 6.12.0 or 7.4.0, which fixes the issue.

Credit:

LeaveSong (finder)

References:

https://cwiki.apache.org/confluence/display/WW/S2-075
https://struts.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-104711

