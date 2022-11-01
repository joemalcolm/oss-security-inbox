X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/01/2
Message-ID: <f0c02aa7-7165-3828-903e-1385512e069c@apache.org>
Date: Tue, 01 Nov 2022 02:20:21 +0000
From: Weijie Wu <wuweijie@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-31764: Apache ShardingSphere ElasticJob-UI allows RCE via event trace data source JDBC 
Content-Type: text/plain; charset=utf-8

Description:

The Lite UI of Apache ShardingSphere ElasticJob-UI allows an attacker to perform RCE by constructing a special JDBC URL of H2 database. This issue affects Apache ShardingSphere ElasticJob-UI version 3.0.1 and prior versions. This vulnerability has been fixed in ElasticJob-UI 3.0.2.
The premise of this attack is that the attacker has obtained the account and password. Otherwise, the attacker cannot perform this attack.

