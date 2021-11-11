X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/11/1
Message-ID: <72d28796-d98d-7476-0df3-2bcb59fd79c9@apache.org>
Date: Thu, 11 Nov 2021 03:08:08 +0000
From: Juan Pan <panjuan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-26558: Apache ShardingSphere-UI: Deserialization of Untrusted Data 
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

Deserialization of Untrusted Data vulnerability of Apache ShardingSphere-UI allows an attacker to inject outer link resources.  This issue affects Apache ShardingSphere-UI Apache ShardingSphere-UI version 4.1.1 and later versions; Apache ShardingSphere-UI versions prior to 5.0.0.

Mitigation:

This issue is related to ShardingSphere-UI project. If you do not deploy UI project, it is not required to upgrade. Otherwise, the vulnerability issue of servers deployed UI project or version upgrade is supposed to consider.

