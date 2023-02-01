X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/02/01/3
Message-ID: <6e8f9006-ad6c-c97d-b14e-97be90964314@apache.org>
Date: Wed, 01 Feb 2023 10:43:09 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-24997: Apache InLong: Jdbc Connection Security Bypass in InLong 
Content-Type: text/plain; charset=utf-8

Description:

Bypass Through User-Controlled Key vulnerability in Apache Software Foundation Apache InLong.This issue affects Apache InLong: from 1.1.0 through 1.5.0. Users are advised to upgrade to Apache InLong's latest version or cherry-pick  https://github.com/apache/inlong/pull/7223 https://github.com/apache/inlong/pull/7223  to solve it.

Credit:

This issue was discovered by s3gundo of Hundsun Tech (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-24997

