X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/02/8
Message-ID: <4c192545-d61d-464d-3ea4-1d0b30dc5bad@apache.org>
Date: Fri, 02 Oct 2026 08:48:51 +0000
From: Emmanuel Lécharny <elecharny@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103885: Apache Directory LDAP API: Denial of service via crafted telephone number values 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Directory LDAP API 2.1.0 before 2.1.9

Description:

Asymmetric Resource Consumption vulnerability in Apache Directory LDAP API.



A LDAP server using the LDAP API (like Apache DS) may consume 100% of a CPU core indefinitely when processing some badly crafted Telephone Numbers.



This issue affects Apache Directory LDAP API: from 2.1.0 before 2.1.9.



Users are recommended to upgrade to version 2.1.9, which fixes the issue.

This issue is being tracked as CWE-405 Asymmetric Resource Consumption (Amplification) 

Credit:

Claude Security (tool)
The Apache Software Foundation (finder)

References:

https://directory.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-103885
https://issues.apache.org/jira/browse/CWE-405 Asymmetric Resource Consumption (Amplification)

