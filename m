X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/01/26/2
Message-ID: <CA+ZBtZ66qeLCWBy0DBUoRngMfP+dWdW6aRrGE6AO9nD51=opZg@mail.gmail.com>
Date: Wed, 26 Jan 2022 14:29:17 +0800
From: Zhang Yonglun <zhangyonglun@...che.org>
To: oss-security@...ts.openwall.com, dev@...nyu.apache.org
Subject: CVE-2022-23944: Apache ShenYu (incubating) Improper access control
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

Any user can access /plugin API without authentication. The project
use Shiro to authenticate, but the default WhiteLists are defineded in
application include /plugin path.
So everybody can access /plugin API which will list the details of all
 plugins include id, name, config (may include password). We can also
add a new plugin with  POST method while using /plugin API.
This issue affects Apache ShenYu (incubating) 2.4.0 and 2.4.1.

Mitigation:

Upgrade to Apache ShenYu (incubating) 2.4.2 or apply patch
https://github.com/apache/incubator-shenyu/pull/2462.


--

Zhang Yonglun
Apache ShenYu (Incubating)
Apache ShardingSphere
