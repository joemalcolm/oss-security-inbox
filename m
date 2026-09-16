X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/16
Message-ID: <CAPLcw7J-tnr4dSne5hCM1nfyH0ZQZN_qE3K4hRmRa1A8_Y5a+g@mail.gmail.com>
Date: Thu, 17 Sep 2026 00:09:54 +0100
From: Haitam Lazaar <lazaar.haitam.official@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-91752: GNU libextractor < 1.15 Stack Overflow via OLE2
Content-Type: text/plain; charset=utf-8

Hello oss-security,

A stack-based buffer overflow vulnerability was identified in GNU
libextractor's OLE2 plugin for versions prior to 1.15. The vulnerability
has been assigned CVE-2026-91752.

Description:
GNU libextractor before 1.15 contains a stack-based buffer overflow
vulnerability in the `process_star_office` function that sizes a
variable-length stack array from attacker-controlled OLE2 stream data.
Attackers can craft malicious StarOffice documents that allocate up to 4 MB
on the stack, causing stack overflow and crashing any application
extracting metadata from the document (Denial of Service). In
multi-threaded contexts using EXTRACTOR_OPTION_IN_PROCESS, the overflow
bypasses -fstack-clash-protection by overflowing into adjacent thread stack
frames, allowing for arbitrary Code Execution.

Affected Versions: libextractor >= 0, < 1.15

Fix:
The issue is patched in GNU libextractor version 1.15.

References:
CVE Record: https://www.cve.org/CVERecord?id=CVE-2026-91752
VulnCheck Advisory:
https://www.vulncheck.com/advisories/gnu-libextractor-before-1.15-stack-overflow-via-ole2
PoC & Technical Details:
https://github.com/Haitam-lazaar/libextractor-ole2-rce
Upstream Patches:
  -
https://git.gnunet.org/gnunet/libextractor/commit/04004eb19033e093938138b09befdf31e71e8522.html
  -
https://git.gnunet.org/gnunet/libextractor/commit/2781c7e9095f4ddaff4f535d69342f3903b18422.html
GNU libextractor: https://www.gnu.org/software/libextractor/

Regards,
Haitam Lazaar

