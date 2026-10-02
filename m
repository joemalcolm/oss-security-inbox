X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/02/7
Message-ID: <80132ce6-a271-c4f4-239e-92e929ab9abc@apache.org>
Date: Fri, 02 Oct 2026 08:48:33 +0000
From: Emmanuel Lécharny <elecharny@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103880: Apache Directory LDAP API: Denial of service via excessive bcrypt cost factor in stored passwords 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Directory LDAP API 2.1.0 before 2.1.9

Description:

Asymmetric Resource Consumption vulnerability in Apache Directory LDAP API.



Storing a password using the bcrypt algorithm with a high force like 30 in a LDAP server that supports this algorithm will cause the server CPU to  run for hours checking the credentials. A bounded cost should be enforced to avoid a server DOS.



This issue affects Apache Directory LDAP API: from 2.1.0 before 2.1.9.



Users are recommended to upgrade to version 2.1.9, which fixes the issue.

Credit:

Claude Security (tool)
The Apache Software Foundation (finder)

References:

https://directory.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-103880

