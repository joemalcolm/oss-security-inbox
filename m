X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/24/5
Message-Id: <TKA4MC$775C465A8C0E985986DC6E26740C4DEF@intilangelo.it>
Date: Mon, 24 Aug 2026 17:06:12 +0200
From: "Intilangelo, Andrea" <andrea@...ilangelo.it>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-78331 / CVE-2026-78332: Multiple Vulnerabilities in NethServer
Content-Type: text/plain; charset=utf-8

Two stored XSS vulnerabilities have been disclosed in the NethServer WebTop module, affecting versions 1.5.6 and earlier.
CVE-2026-78331 (CVSS 4.0: 8.7) affects the calendar component, while CVE-2026-78332 (CVSS 4.0: 8.2) affects the contacts component.


Both vulnerabilities allow malicious content to be stored and JavaScript code to be executed when the affected calendar event or contact is viewed by another user.

Affected versions:
WebTop <= 1.5.6

Fixed version:
WebTop 1.5.7


Credits:
Vulnerability discovered by Andrea Intilangelo


References:

https://www.incibe.es/en/incibe-cert/notices/aviso/multiple-vulnerabilities-nethserver
https://github.com/NethServer/ns8-webtop/security/advisories/GHSA-cqcv-5f3w-wpmr
https://github.com/NethServer/ns8-webtop/security/advisories/GHSA-7vf9-f3rc-vg3x


