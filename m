X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/05/13
Message-ID: <9ae337f9-d966-d408-ec55-87379b3bb2cb@apache.org>
Date: Mon, 05 Oct 2026 07:13:29 +0000
From: Lukasz Lenart <lukaszlenart@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-104714: Apache Struts: Shared message formatter exposes date and time values across concurrent requests 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Struts 2.0.0 through 2.3.37
- Apache Struts 2.5.0 through 2.5.33
- Apache Struts 6.0.0 through 6.11.0
- Apache Struts 7.0.0 through 7.3.0

Description:

Concurrent execution using shared resource with improper synchronization ('race condition') vulnerability in Apache Struts. Where a localized message formats a date or time argument, the formatter retained for that message by the application-wide text provider is used by concurrently served requests without isolation, so a value belonging to one user can appear in another user's response, or the rendering can fail and surface as a server error. Applications whose localized messages format no date or time arguments are not affected.

This issue affects Apache Struts: from 2.0.0 through 2.3.37, from 2.5.0 through 2.5.33, from 6.0.0 through 6.11.0, from 7.0.0 through 7.3.0.

Users are recommended to upgrade to version 6.12.0 or 7.4.0, which fixes the issue.

Credit:

n0mi1k (finder)

References:

https://cwiki.apache.org/confluence/display/WW/S2-078
https://struts.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-104714

