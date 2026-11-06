X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/15
Message-ID: <f91221c5-8e0d-aee1-627a-1fe966049064@apache.org>
Date: Fri, 06 Nov 2026 11:12:58 +0000
From: Benoit Tellier <btellier@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-74756: Apache James: WebAdmin exposed without authentication on official Docker default 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache James before 3.9.1

Description:

Some docker-compose shipped by the project exposes by default Webadmin REST API publically without proper authentication setup.
Version 3.9.1 onward sets a random credential by default on unprotected webadmin endpoints to prevent this while retain convenience.

Credit:

Wanxin Yin (finder)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-74756

