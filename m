X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/02/6
Message-ID: <fd681691-5438-88f6-63d7-91179670b932@apache.org>
Date: Fri, 02 Oct 2026 08:48:13 +0000
From: Emmanuel Lécharny <elecharny@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103878: Apache Directory LDAP API: Injection of plaintext responses during StartTLS 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Directory LDAP API 2.1.0 before 2.1.9

Description:

Cleartext transmission of sensitive information vulnerability in Apache Directory LDAP API.



A StartTLS extended operation started after a Search request has been sent can lead to receive data in plain text before the TLS Handshake has been completed.



This issue affects Apache Directory LDAP API: from 2.1.0 before 2.1.9.



Users are recommended to upgrade to version 2.1.9, which fixes the issue.

Credit:

Claude Security (tool)
The Apache Software Foundation (finder)

References:

https://directory.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-103878

