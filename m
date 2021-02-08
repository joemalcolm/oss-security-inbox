X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/02/08/1
Message-Id: <A9D6FE26-5B9B-4505-A830-A2D4DBE3DFE6@nanthrax.net>
Date: Mon, 8 Feb 2021 06:25:40 +0100
From: Jean-Baptiste Onofre <jb@...thrax.net>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-13947 - XSS in Apache ActiveMQ WebConsole
Content-Type: text/plain; charset=utf-8

CVE-2020-13947 - XSS in WebConsole

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Apache ActiveMQ prior to 5.15.12 and 5.16.0

Description:
An instance of a cross-site scripting
vulnerability was identified to be present in the web based
administration console on the message.jsp page of Apache ActiveMQ
versions 5.15.12 to 5.16.0.

Mitigation:
Upgrade to at least Apache ActiveMQ 5.15.13 or 5.16.1

Credit:
This issue was discovery by:

* qiang qiang <silbul2017@...il.com>


