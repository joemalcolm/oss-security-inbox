X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/21/11
Message-ID: <19c1b692-f984-7c1f-b646-6106a82c4881@apache.org>
Date: Sun, 21 May 2023 08:23:21 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-31454: Apache InLong: IDOR make users can bind any cluster 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache InLong 1.2.0 through 1.6.0

Description:

Incorrect Permission Assignment for Critical Resource Vulnerability in Apache Software Foundation Apache InLong.This issue affects Apache InLong: from 1.2.0 through 1.6.0. 

The attacker can bind any cluster, even if he is not the cluster owner. Users are advised to upgrade to Apache InLong's 1.7.0 or cherry-pick [1] to solve it.[1]

 https://github.com/apache/inlong/pull/7947 https://github.com/apache/inlong/pull/7947

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-31454

