X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/07/13/4
Message-ID: <b713094b-a7d1-a7db-4ff9-3a1fe3523d6d@apache.org>
Date: Tue, 13 Jul 2021 04:01:33 +0000
From: Stefan Bodewig <bodewig@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-36090: Apache Commons Compress 1.0 to 1.20 denial of service vulnerability 
Content-Type: text/plain; charset=utf-8

Description:

When reading a specially crafted ZIP archive, Compress can be made to allocate large amounts of memory that finally leads to an out of memory error even for very small inputs. This could be used to mount a denial of service attack against services that use Compress' zip package.


Mitigation:

Commons Compress users should upgrade to 1.21 or later.

Credit:

This issue was discovered by OSS Fuzz.

References:

https://commons.apache.org/proper/commons-compress/security-reports.html

