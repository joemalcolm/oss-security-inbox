X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/12/20/1
Message-ID: <568519e9-1bcc-671d-5868-d96b3fa6f908@apache.org>
Date: Mon, 20 Dec 2021 10:03:37 +0000
From: Gábor Szádovszky <gabor@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-41561: Apache Parquet-MR potential DoS in case of malicious Parquet file 
Content-Type: text/plain; charset=utf-8

Description:

Improper Input Validation vulnerability in Parquet-MR of Apache Parquet allows an attacker to DoS by malicious Parquet files. This issue affects Apache Parquet-MR version 1.9.0 and later versions.

This issue is being tracked as PARQUET-2094

Mitigation:

1.12.x users should upgrade to 1.12.2
1.11.x users should upgrade to 1.11.2
Users of older release lines (<= 1.10.x) should upgrade to 1.12.2 or 1.11.2

Credit:

This issue was discovered by Sergey Temnikov of the Amazon S3 team.

