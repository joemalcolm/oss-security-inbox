X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/02/5
Message-ID: <a993105c-d527-ce32-8405-bd1f1acf1001@apache.org>
Date: Fri, 02 Oct 2026 08:48:04 +0000
From: Emmanuel Lécharny <elecharny@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103877: Apache Directory LDAP API: Unsafe loading of Java code from LDAP schema elements 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache Directory LDAP API 2.1.0 before 2.1.9

Description:

Deserialization of Untrusted Data vulnerability in Apache Directory LDAP API.



A rogue/compromised LDAP server (or pre-TLS MITM) can answer a client's loadSchema() subschema search with a schema object that contains a serialized Java class, allowing some potential RCE. 



This issue affects Apache Directory LDAP API: from 2.1.0 before 2.1.9.



Users are recommended to upgrade to version 2.1.9, which fixes the issue.

Credit:

Claude Security (tool)
The Apache Software Foundation (finder)

References:

https://directory.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-103877

