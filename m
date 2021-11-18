X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/19/4
Message-ID: <c75fc85e-1072-99b1-83ad-20da58aebf23@apache.org>
Date: Thu, 18 Nov 2021 23:06:09 +0000
From: Siddharth Wagle <swagle@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-39233: Apache Ozone: Container-related datanode operations can be called without authorization 
Content-Type: text/plain; charset=utf-8

Description:

Container related Datanode requests of Ozone Datanode were not properly authorized and can be called by any client. 

This issue is being tracked as HDDS-4729,HDDS-5236

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

Apache Ozone would like to thank Marton Elek for reporting this issue.

