X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/7
Message-ID: <av15byrNyiZ-BjPA@donburi.himad.notcom.org>
Date: Wed, 18 Nov 2026 12:20:34 +0200
From: Valtteri Vuorikoski <vuori@...com.org>
To: oss-security@...ts.openwall.com
Subject: Roundcube webmail: multiple vulnerabilities prior to 1.6.21 / 1.7.6
Content-Type: text/plain; charset=utf-8

Roundcube, a webmail frontend, released versions 1.6.21 (LTS) and 1.7.6
with fixes to numerous CSRF, SSRF, injection and other vulnerabilities
on Nov 9.

>From the announcement <https://roundcube.net/news/2026/11/09/security-updates-1.6.21-and-1.7.6>:

  * Fix open redirect via IMAP error recovery on attachment get,
reported by Santhoshkumar S.

  * Fix so Received: header includes only trusted hostname and forwarded
IP from a trusted proxy, reported by Squirt1e, Atum, N0b0dy, Gh0u1L5.

  * Fix bug where some managesieve destructive actions could have been
triggered cross-site via GET, reported by Squirt1e, Atum, N0b0dy,
Gh0u1L5.

  * Fix Sieve script injection via a rule operator, reported by
Squirt1e, Atum, N0b0dy, Gh0u1L5.

  * Fix Sieve script injection via set/include modifiers, reported by
Squirt1e, Atum, N0b0dy, Gh0u1L5.

  * Fix bug where resolve_url() ignored trusted host setting, reported
by Squirt1e, Atum, N0b0dy, Gh0u1L5.

  * Fix mail header injection via a MDN subject, reported by Squirt1e,
Atum, N0b0dy, Gh0u1L5

  * Fix HTTP request injection via the spellcheck ATD backend, reported
by Squirt1e, Atum, N0b0dy, Gh0u1L5.

  * Fix IMAP command injection via CRLF in _uid parameter with
messages_cache enabled, reported by dexx-tech.

  * Fix SSRF in CSS proxy via incomplete is_local_url() nip.io/sslip.io
bypass, reported by blacksw0rd.

  * Fix CSRF validation bypass for file-only POST requests, reported by
skad00sh.

  * Fix disabled_actions restriction bypass by writing ‘_’ instead of
‘-‘ in the action name, reported by skad00sh.

  * Fix CSRF validation bypass for mail purge/expunge commands, reported
by threalwinky.

  * Fix passing potentally unsafe attachment content into ImageMagick on
image type conversion, reported by José Luis Sánchez Pérez -
Cybersecurity Blue & Red Team.

  * Fix Unbounded CPU loop/DoS in rcube_session::unserialize() via a
negative length token, reported by Guang.

  * Fix SSRF filter (is_local_url()) bypass via 6to4 (2002::/16)
addresses, reported by wyx98765.

  * Fix so IMAP host input is validated more strictly, reported by
Mohamed Elgzouli.

No CVEs or other indicators were provided. Additionally the announcement
notes that the 1.6 (LTS) branch will end support in the near future due
to the effort of backporting patches.

 -valtteri
 
