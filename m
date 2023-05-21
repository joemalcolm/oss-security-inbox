X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/21/5
Message-ID: <939f2cbc-ee5e-c55c-1390-5087ccddc69d@apache.org>
Date: Sun, 21 May 2023 08:17:38 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-31066: Apache InLong: Insecure direct object references for inlong sources 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache InLong 1.4.0 through 1.6.0

Description:

Files or Directories Accessible to External Parties vulnerability in Apache Software Foundation Apache InLong.This issue affects Apache InLong: from 1.4.0 through 1.6.0. Different users in InLong could delete, edit, stop, and start others' sources! Users are advised to upgrade to Apache InLong's 1.7.0 or cherry-pick [1] to solve it.



[1]  https://github.com/apache/inlong/pull/7775 https://github.com/apache/inlong/pull/7775

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-31066

