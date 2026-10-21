X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/6
Message-ID: <CAEKnhAENTs9-=FsuKz8ABQ9H84jfA-xsVYT56P-OhoKnBhNN7g@mail.gmail.com>
Date: Wed, 21 Oct 2026 16:41:54 +0200
From: Jakub Zelenka <bukka@....net>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-109618: PHP 8.2–8.5 RCE via OOM corruption
Content-Type: text/plain; charset=utf-8

Hello,

The PHP security team announces a critical vulnerability in PHP core
(php-src).

CVE: CVE-2026-109618
Severity: Critical (CVSS v4.0: 9.2)

Affected versions are PHP 8.2 before 8.2.35, PHP 8.3 before 8.3.36, PHP 8.4
before 8.4.27, and PHP 8.5 before 8.5.12.

PHP uses longjmp() to abort request handling on out-of-memory (OOM) errors.
An allocation failure can interrupt initialization while incomplete request
state is already reachable. Request shutdown may then access this invalid
state, potentially allowing remote code execution.

Unauthenticated RCE has been demonstrated over HTTP against Apache mod_php,
before application code executes. Source analysis also indicates FPM
susceptibility, although a complete FPM exploit has not been demonstrated.

Upgrade to PHP 8.2.35, 8.3.36, 8.4.27, or 8.5.12, or a later release in the
corresponding branch. Updating is the only complete mitigation.

Full technical details and mitigation guidance are available at:
https://github.com/php/php-src/security/advisories/GHSA-w8hw-w9fx-j79w

Regards,
Jakub Zelenka
PHP security team

