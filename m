X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/1
Message-ID: <mwtw9xur.d2a04aa3-7515-474f-a2a3-6bed73be33f3@cavalca.name>
Date: Mon, 23 Nov 2026 23:26:15 +0000
From: "Davide Cavalca" <davide@...alca.name>
To: <oss-security@...ts.openwall.com>
Cc: "Michel Lind" <michel@...hel-slm.name>, "Nick Terrell" <nickrterrell@...il.com>
Subject: zstd: CVE-2026-124851
Content-Type: text/plain; charset=utf-8

An information disclosure vulnerability in Zstandard versions 1.5.1 through 1.5.7 allows specially crafted compressed data to expose the contents of an internal buffer through decompressed output. The buffer is 64 KiB in the default configuration and may contain uninitialized memory or literals from earlier decompressions performed using the same decompression context. An attacker who can submit compressed data and observe the resulting output can recover the buffer's contents.

Advisory: https://www.cve.org/CVERecord?id=CVE-2026-124851

Fixed in https://github.com/meta/zstd/releases/tag/v1.6.0

Best regards,
Davide Cavalca
