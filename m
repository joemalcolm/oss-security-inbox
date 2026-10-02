X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/02/3
Message-ID: <28b376f8-bfae-8025-c524-b88f05858a50@apache.org>
Date: Fri, 02 Oct 2026 08:47:42 +0000
From: Emmanuel Lécharny <elecharny@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-102731: Apache Directory LDAP API: Denial of service via excessive memory allocation in BER decode 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache Directory LDAP API 1.2.0 before 1.2.9

Description:

Memory allocation with excessive size value vulnerability in Apache Directory LDAP API.



A malicious peer (or a MITM) can send a small BER-encoded response causing a large memory allocation before any data is received. This can lead to an OutOfMemoryError and denial of service.



The client JVM OOMs (OutOfMemoryError bypasses the DecoderException handlers) or pins the large allocation per connection while the attacker stalls.



A handful of connections exhausts any heap. The same bytes from an unauthenticated pre-bind client hit any embedding server that did not set MAX_PDU_SIZE_ATTR.



This issue affects Apache Directory LDAP API: from 1.2.0 before 1.2.9.



Users are recommended to upgrade to version 1.2.9, which fixes the issue.

Credit:

Claude Security (tool)
The Apache Software Foundation (finder)

References:

https://directory.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-102731

