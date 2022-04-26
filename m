X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/04/26/2
Message-ID: <3f9af332.69b6.180664aec3f.Coremail.morningman@163.com>
Date: Tue, 26 Apr 2022 22:33:47 +0800 (CST)
From: 陈明雨 <morningman@....com>
To: general <general@...ubator.apache.org>, me@....io, security@...che.org,  oss-security@...ts.openwall.com
Subject: CVE-2022-23942: Apache Doris(incubating) hardcoded cryptography initialization
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:
=============
Doris use hardcoded key and IV to initialize the cipher used for ldap password, which may lead to information disclosure.

Mitigation:
=============
Upgrade to 1.0.0[1] or higher will resolve this problem.

Credit:
=============
We would like to thanks to Dwi Siswanto for the report of this issue

References:
=============
https://lists.apache.org/thread/com2dyzp3bn2rdrotry90q2zzord4tvt[1] http://doris.incubator.apache.org/downloads/downloads.html



--

此致！Best Regards
陈明雨 Mingyu Chen

Email:
chenmingyu@...che.org
