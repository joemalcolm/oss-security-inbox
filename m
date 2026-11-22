X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/22/5
Message-ID: <3f761c7e-5a1f-ae65-05d5-5ffaf98b93fc@apache.org>
Date: Sun, 22 Nov 2026 11:22:13 +0000
From: Jeffrey Vo <jeffreyvo@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-125651: Apache Arrow Rust: Bloom filters written as plaintext when writing encrypted Parquet 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Arrow Rust 60.0.0 through 60.1.0
- Apache Arrow Rust 59.0.0 through 59.3.2
- Apache Arrow Rust 58.0.0 through 58.4.1
- Apache Arrow Rust 55.0.0 through 57.3.2

Description:

Cleartext storage in encrypted parquet file vulnerability in Apache Arrow Rust (`parquet` crate), from version 55.0.0 through to 57.3.2, 58.4.1, 59.3.2 and 60.1.0.



When writing an encrypted parquet file with a column with bloom filters, the header and bitsets of the bloom filter are written in plaintext in the final parquet.



Users are recommended to upgrade to versions 57.3.3, 58.4.2, 59.3.3 or 60.2.0 which fix the issue by raising an error when trying to write encrypted parquet files with bloom filters enabled, preventing such files from being written out.



Existing encrypted parquet files written with bloom filters are still vulnerable, and it is recommended to rewrite those files with bloom filters disabled if possible.

Credit:

Yanzhi Xin - autoCAT6 (finder)

References:

https://arrow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-125651

