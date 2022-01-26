X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/01/26/1
Message-ID: <CA+ZBtZ5fDbBRkgkOC9DsH5jMBNKEf0HLcQQyE4L7PeaWSO-PQQ@mail.gmail.com>
Date: Wed, 26 Jan 2022 14:21:09 +0800
From: Zhang Yonglun <zhangyonglun@...che.org>
To: oss-security@...ts.openwall.com, dev@...nyu.apache.org
Subject: CVE-2021-45029: Apache ShenYu (incubating) Groovy Code Injection and SpEL Injection
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Groovy Code Injection & SpEL Injection which lead to Remote Code Execution.
Apache ShenYu (incubating)  provides some plugins, and we can define
our own Selectors And Rules in which we can set some condition match
including "match = regEx like contain SpEL Groovy".
There are no filters to avoid Remote Code Execution before
parseExpression and Eval.me.
This issue affects Apache ShenYu (incubating)  2.4.0 and 2.4.1.

Mitigation:

Upgrade to Apache ShenYu (incubating) 2.4.2 or apply patch
https://github.com/apache/incubator-shenyu/pull/2576.


--

Zhang Yonglun
Apache ShenYu (Incubating)
Apache ShardingSphere
