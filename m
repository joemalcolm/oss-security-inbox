X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/21/10
Message-ID: <83f91fe0-b9f6-11c2-0dd2-bc3a9814a343@apache.org>
Date: Sun, 21 May 2023 08:22:34 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-31453: Apache InLong: IDOR make users can delete others' subscription 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache InLong 1.2.0 through 1.6.0

Description:

Incorrect Permission Assignment for Critical Resource Vulnerability in Apache Software Foundation Apache InLong.This issue affects Apache InLong: from 1.2.0 through 1.6.0. The attacker can delete others' subscriptions, even if they are not the owner
of the deleted subscription. Users are advised to upgrade to Apache InLong's 1.7.0 or cherry-pick [1] to solve it.

[1] 

 https://github.com/apache/inlong/pull/7949 https://github.com/apache/inlong/pull/7949

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-31453

