X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/21/1
Message-ID: <dab7c670-5833-518d-a77d-73493cb2714f@apache.org>
Date: Sun, 21 May 2023 08:10:52 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-31058: Apache InLong: JDBC URL bypassing by adding blanks 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache InLong 1.4.0 through 1.6.0

Description:

Deserialization of Untrusted Data Vulnerability in Apache Software Foundation Apache InLong.This issue affects Apache InLong: from 1.4.0 through 1.6.0. Attackers would bypass the
'autoDeserialize' option filtering by adding blanks.  Users are advised to upgrade to Apache InLong's 1.7.0 or cherry-pick [1] to solve it.



[1] 

 https://github.com/apache/inlong/pull/7674 https://github.com/apache/inlong/pull/7674

Credit:

H Ming (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-31058

