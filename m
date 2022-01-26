X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/01/26/3
Message-ID: <CA+ZBtZ7__rBfj7EgGm9sibydEc-Xyep9ctp8z7BTMqhLf7enVQ@mail.gmail.com>
Date: Wed, 26 Jan 2022 14:40:38 +0800
From: Zhang Yonglun <zhangyonglun@...che.org>
To: oss-security@...ts.openwall.com, dev@...nyu.apache.org
Subject: CVE-2022-23945: Apache ShenYu (incubating) missing authentication allows gateway registration
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Missing  authentication on ShenYu Admin when a gateway registers. So,
if ShenYu Admin is exposed to the internet, it will allow any user to
register as the gateway.
This issue affects Apache ShenYu (incubating) 2.4.0 and 2.4.1.

Mitigation:

Upgrade to Apache ShenYu (incubating) 2.4.2 or apply patch
https://github.com/apache/incubator-shenyu/pull/2723.


--

Zhang Yonglun
Apache ShenYu (Incubating)
Apache ShardingSphere
