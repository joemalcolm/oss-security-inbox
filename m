X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/30/10
Message-ID: <4804e279-9e3d-ba5d-961a-f6ae455685f5@apache.org>
Date: Wed, 30 Sep 2026 10:31:52 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-88920: Apache WSS4J: SAML Sender-Vouches Authentication Bypass 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache WSS4J (org.apache.wss4j:wss4j-ws-security-dom) 4.0.0 before 4.0.2
- Apache WSS4J (org.apache.wss4j:wss4j-ws-security-dom) 3.0.0 before 3.0.6
- Apache WSS4J (org.apache.wss4j:wss4j-ws-security-dom) before 2.4.4

Description:

An authentication bypass in the DOM security processor in Apache WSS4J allows unauthenticated remote attackers to forge authenticated SOAP messages via a crafted unsigned SAML sender-vouches assertion containing an attacker-controlled key.

Users are recommended to upgrade to versions 4.0.2 or 3.0.6 or 2.4.4, which fix this issue.

Credit:

Reported by n0mi1k (finder)

References:

https://ws.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-88920

