X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/12/30/1
Message-ID: <30c1915c-551e-732c-dcb8-7e838253e2b6@apache.org>
Date: Fri, 30 Dec 2022 06:52:17 +0000
From: Xiaoxiang Yu <xxyu@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-43396: Apache Kylin: Command injection by Useless configuration 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

In the fix for CVE-2022-24697, a blacklist is used to filter user input commands. But there is a risk of being bypassed. The user can control the command by controlling the kylin.engine.spark-cmd parameter of conf.

Work Arounds:

Users of Kylin 2.x & Kylin 3.x & 4.x should upgrade to 4.0.3 or apply patch  https://github.com/apache/kylin/pull/2011 https://github.com/apache/kylin/pull/2011

Credit:

Yasax1 Li <pp1ove.lit@...il.com> (finder)

References:

https://lists.apache.org/thread/o53vqxjdd9q731bwqpgcqyzx9r716qwx
https://kylin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-43396

