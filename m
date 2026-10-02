X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/02/4
Message-ID: <e13704ed-8753-ae55-2fdf-8018e1e2f88f@apache.org>
Date: Fri, 02 Oct 2026 08:47:56 +0000
From: Emmanuel Lécharny <elecharny@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103552: Apache Directory LDAP API: A unbound client can send a deeply nested search filter that overflows the stack in the server's decoder 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache Directory LDAP API 1.2.0 before 1.2.9

Description:

Stack Overflow vulnerability in Apache Directory LDAP API.



Before binding, a client can send a deeply nested search filter that overflows the stack in the server's decoder.



This issue affects Apache Directory LDAP API: from 1.2.0 before 1.2.9.



Users are recommended to upgrade to version 1.2.9, which fixes the issue.

Credit:

Claude Security (tool)
The Apache Software Foundation (finder)

References:

https://directory.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-103552

