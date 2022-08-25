X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/08/25/3
Message-ID: <d1b6acf9-0f59-1954-ccad-2243ca03d138@apache.org>
Date: Thu, 25 Aug 2022 14:09:16 +0000
From: Joe Orton <jorton@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-22728: libapreq2: libapreq2 multipart form parse memory corruption 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

A flaw in libapreq2 versions 2.16 and earlier could cause a buffer overflow while processing multipart form uploads.  A remote attacker could send a request causing a process crash which could lead to a denial of service attack.

