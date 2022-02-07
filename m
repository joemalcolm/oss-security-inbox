X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/02/07/1
Message-ID: <f037cdaa-2cef-1c10-849d-52f526ff5af8@apache.org>
Date: Mon, 07 Feb 2022 04:39:16 +0000
From: Benoit Tellier <btellier@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-22931: Path traversal in Apache James 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Fix of CVE-2021-40525 do not prepend delimiters upon valid directory validations.

Affected implementations include:
 - maildir mailbox store
 - Sieve file repository

This enables a user to access other users data stores (limited to user names being prefixed by the value of the username being used).

Mitigation:

This had been fixed in Apache James 3.6.2.

Credit:

These issues were discovered and reported by GHSL team member Jaroslav Lobačevski

