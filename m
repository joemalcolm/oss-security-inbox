X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/02/2
Message-ID: <812cded6-0ff3-663d-db21-aa432c1826a1@apache.org>
Date: Mon, 02 Nov 2026 11:06:44 +0000
From: Jeffrey Vo <jeffreyvo@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-111959: Apache Arrow Rust: Improper validation of RunEndEncoded arrays allows out of bounds reads 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Arrow Rust 60.0.0 before 60.1.0
- Apache Arrow Rust 59.0.0 through 59.3.1
- Apache Arrow Rust 58.0.0 through 58.4.0
- Apache Arrow Rust 33.0.0 through 57.3.1

Description:

Out-of-bounds read vulnerability in Apache Arrow Rust (`arrow` crate), from version 33.0.0 through to versions 57.3.1, 58.4.0, 59.3.1 and 60.0.0.



Improper validation of RunEndEncoded arrays in the ArrayData interface can allow reading data beyond the bounds of the child values array.



Users are recommended to upgrade to versions 60.1.0, 59.3.2, 58.4.1, 57.3.2 which fixes the issue.

Credit:

Adam Korczynski of Ada Logics (reporter)
Anthropic (finder)

References:

https://arrow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-111959

