X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/05/11
Message-ID: <79a84ab1-6c1b-97d9-801b-ec269daefc5a@apache.org>
Date: Mon, 05 Oct 2026 07:12:32 +0000
From: Lukasz Lenart <lukaszlenart@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-104712: Apache Struts: Disproportionate response size when rendering BigDecimal request parameters 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Struts 2.5.14 through 2.5.33
- Apache Struts 6.0.0 through 6.11.0
- Apache Struts 7.0.0 through 7.3.0

Description:

Asymmetric resource consumption (amplification) vulnerability in Apache Struts. When a request parameter is bound to an arbitrary-precision decimal (java.math.BigDecimal) property that is then rendered through the Struts tag library, the framework can produce a response many orders of magnitude larger than the request, allowing an unauthenticated remote attacker to exhaust server CPU and outbound network capacity with sustained low-volume traffic. Applications that do not bind request parameters to BigDecimal properties, or never render such a property through the Struts tag library, are not affected.

This issue affects Apache Struts: from 2.5.14 through 2.5.33, from 6.0.0 through 6.11.0, from 7.0.0 through 7.3.0.

Users are recommended to upgrade to version 6.12.0 or 7.4.0, which fixes the issue.

Credit:

0xCc.zhang (finder)

References:

https://cwiki.apache.org/confluence/display/WW/S2-076
https://struts.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-104712

