X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/21/3
Message-ID: <0b63ef57-4924-1a73-0f38-36585dd77b76@apache.org>
Date: Sun, 21 May 2023 08:15:00 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-31064: Apache InLong: Insecurity direct object references cancelling applications 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache InLong 1.2.0 through 1.6.0

Description:

Files or Directories Accessible to External Parties vulnerability in Apache Software Foundation Apache InLong.This issue affects Apache InLong: from 1.2.0 through 1.6.0. the user in InLong could cancel an application that doesn't belongs to it. Users are advised to upgrade to Apache InLong's 1.7.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/pull/7799 https://github.com/apache/inlong/pull/7799

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-31064

