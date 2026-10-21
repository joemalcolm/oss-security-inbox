X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/7
Message-ID: <CAEKnhAH+MYHvVOujPDuwwFZmLfeVySqKbmP9=7YErtqU4RB0hA@mail.gmail.com>
Date: Wed, 21 Oct 2026 16:44:06 +0200
From: Jakub Zelenka <bukka@....net>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-109619: PHP 8.2–8.5 RCE via stale global state
Content-Type: text/plain; charset=utf-8

Hello,

The PHP security team announces a critical vulnerability in PHP core
(php-src).

CVE: CVE-2026-109619
Severity: Critical (CVSS v4.0: 9.2)

Affected versions are PHP 8.2 before 8.2.35, PHP 8.3 before 8.3.36, PHP 8.4
before 8.4.27, and PHP 8.5 before 8.5.12.

PHP maintains global state that temporarily points into request memory. In
some scenarios, this state is not correctly reset, or is repopulated after
being reset. Once the request memory is freed, a subsequent request handled
by the same worker may access the stale state before normal initialization
replaces it, causing a use-after-free and potentially allowing remote code
execution.

Unauthenticated RCE has been demonstrated against Apache mod_php and
PHP-FPM. Exploitability depends on the affected state, configuration, and
application behavior.

Upgrade to PHP 8.2.35, 8.3.36, 8.4.27, or 8.5.12, or a later release in the
corresponding branch. Updating is the only reliable mitigation; there is no
complete generic configuration workaround.

Full technical details and mitigation guidance are available at:
https://github.com/php/php-src/security/advisories/GHSA-6wmf-4rv5-p3rp

Regards,
Jakub Zelenka
PHP security team

