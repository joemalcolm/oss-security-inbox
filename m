X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/19/2
Message-ID: <e1664b2b-3fe6-65d5-fd28-f872a9b105b4@apache.org>
Date: Thu, 18 Nov 2021 23:04:17 +0000
From: Siddharth Wagle <swagle@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-39231: Apache Ozone: Missing authentication/authorization on internal RPC endpoints 
Content-Type: text/plain; charset=utf-8

Description:

Various internal server-to-server RPC endpoints are available for connections, making it possible for an attacker to download raw data from Datanode and Ozone manager and modify Ratis replication configuration. 

This issue is being tracked as HDDS-4704,HDDS-4730,HDDS-4496,HDDS-4788

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

Apache Ozone would like to thank Marton Elek for reporting this issue.

