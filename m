X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/19/1
Message-ID: <77cee0ac-a53d-6de5-23fe-f6a928e4efc7@apache.org>
Date: Thu, 18 Nov 2021 23:03:45 +0000
From: Siddharth Wagle <swagle@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-36372: Apache Ozone: Original block tokens are persisted and can be retrieved 
Content-Type: text/plain; charset=utf-8

Description:

Initially generated block tokens are persisted to the metadata database and can be retrieved with authenticated users with permission to the key. Authenticated users may use them even after access is revoked. 

This issue is being tracked as HDDS-5315

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

Apache Ozone would like to thank Marton Elek for reporting this issue.

