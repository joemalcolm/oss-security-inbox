X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/12/22/3
Message-ID: <97dbcb8b-609e-07c5-6a78-76da8d4e91ff@apache.org>
Date: Thu, 22 Dec 2022 09:35:08 +0000
From: Weijie Wu <wuweijie@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-45347: Apache ShardingSphere-Proxy: ShardingSphere-Proxy MySQL authentication bypass 
Content-Type: text/plain; charset=utf-8

Description:

ShardingSphere-Proxy with MySQL protocol didn't cleanup session completely after client authentication failed, which allows an attacker to execute normal commands by constructing a special MySQL client. This vulnerability has been fixed in ShardingSphere 5.3.0.

References:

https://shardingsphere.apache.org
https://www.cve.org/CVERecord?id=CVE-2022-45347

