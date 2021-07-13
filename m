X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/07/13/5
Message-ID: <b34423ad-6a9c-8ad5-d97b-1aee0e4722b1@apache.org>
Date: Tue, 13 Jul 2021 17:15:27 +0000
From: Stefan Bodewig <bodewig@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-36373: Apache Ant TAR archive denial of service vulnerability 
Content-Type: text/plain; charset=utf-8

Description:

When reading a specially crafted TAR archive an Apache Ant build can be made to allocate large amounts of memory that finally leads to an out of memory error, even for small inputs. This can be used to disrupt builds using Apache Ant.


Mitigation:

Apache Ant 1.9.x users should upgrade to 1.9.16 or later.
Apache Ant 1.10.x users should upgrade to 1.10.11 or later.

Credit:

This issue is similar to https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-35517 present in Apache Commons Compress which has been detected by OSS Fuzz.

References:

https://ant.apache.org/security.html
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-35517

