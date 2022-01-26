X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/01/26/4
Message-ID: <CA+ZBtZ6ENBd4PkJsuQdqG+67Z5c4Vtpp9P2HJxB03UbY3HYTaA@mail.gmail.com>
Date: Wed, 26 Jan 2022 14:46:17 +0800
From: Zhang Yonglun <zhangyonglun@...che.org>
To: oss-security@...ts.openwall.com, dev@...nyu.apache.org
Subject: CVE-2022-23223: Apache ShenYu (incubating) Password leakage
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

The HTTP response will disclose the user password.
When users send the request like the following URL
"dashboardUser?currentPage=1&pageSize=12", the response will disclose
all the passwords of the users.
This issue affects Apache ShenYu (incubating) 2.4.0 and 2.4.1.

Mitigation:

Upgrade to Apache ShenYu (incubating) 2.4.2 or apply patch
https://github.com/apache/incubator-shenyu/pull/2357.


--

Zhang Yonglun
Apache ShenYu (Incubating)
Apache ShardingSphere
