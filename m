X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/05/12
Message-ID: <f464d5f7-9509-a38f-db24-456084ff75fd@apache.org>
Date: Mon, 05 Oct 2026 07:13:06 +0000
From: Lukasz Lenart <lukaszlenart@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-104713: Apache Struts: Unbounded request body read in the REST plugin 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Struts 2.1.8 through 2.3.37
- Apache Struts 2.5.0 through 2.5.33
- Apache Struts 6.0.0 through 6.11.0
- Apache Struts 7.0.0 through 7.3.0

Description:

Allocation of resources without limits or throttling vulnerability in the Apache Struts REST plugin. A request body is read into memory without any bound on how much will be accepted, so a single request can cause the server to allocate memory in proportion to its size, exhausting the Java heap and denying service to other users. No additional setting has to be enabled. Applications that do not use the REST plugin are not affected.

This issue affects Apache Struts: from 2.1.8 through 2.3.37, from 2.5.0 through 2.5.33, from 6.0.0 through 6.11.0, from 7.0.0 through 7.3.0.

Users are recommended to upgrade to version 6.12.0 or 7.4.0, which fixes the issue.

Credit:

n0mi1k (finder)

References:

https://cwiki.apache.org/confluence/display/WW/S2-077
https://struts.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-104713

