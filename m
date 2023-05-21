X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/21/6
Message-ID: <55ee885e-001c-10c7-5cad-a2bf49fca5e7@apache.org>
Date: Sun, 21 May 2023 08:18:30 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-31098: Apache InLong: Weak Password Implementation in InLong 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache InLong 1.1.0 through 1.6.0

Description:

Weak Password Requirements vulnerability in Apache Software Foundation Apache InLong.This issue affects Apache InLong: from 1.1.0 through 1.6.0. 

When users change their password to a simple password (with any character or
symbol), attackers can easily guess the user's password and access the account.

Users are advised to upgrade to Apache InLong's 1.7.0 or cherry-pick [1] to solve it.



[1]  https://github.com/apache/inlong/pull/7805 https://github.com/apache/inlong/pull/7805

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-31098

