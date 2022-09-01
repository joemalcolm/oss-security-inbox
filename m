X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/01/3
Message-ID: <CA+ZBtZ7wgQi-kfn0KobGNri1GYMd=+ZGirA1yftq5SEHAtr-PA@mail.gmail.com>
Date: Thu, 1 Sep 2022 20:15:11 +0800
From: Zhang Yonglun <zhangyonglun@...che.org>
To: oss-security@...ts.openwall.com
Cc: dev@...nyu.apache.org
Subject: CVE-2022-37435: Apache ShenYu Admin Improper Privilege Management
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Apache ShenYu Admin has insecure permissions, which may allow
low-privilege administrators to modify high-privilege administrator's
passwords.
This issue affects Apache ShenYu 2.4.2 and 2.4.3.

Mitigation:

Upgrade to Apache ShenYu 2.5.0 or apply patch
https://github.com/apache/shenyu/pull/3658.

Credit:

Apache ShenYu would like to thank Lulu Gu for reporting this issue.

--

Zhang Yonglun
Apache ShenYu
Apache ShardingSphere
