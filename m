X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/19/6
Message-ID: <726aa037-5b9d-2dfa-4256-79f53c659b5f@apache.org>
Date: Thu, 18 Nov 2021 23:07:01 +0000
From: Siddharth Wagle <swagle@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-39235: Apache Ozone: Access mode of block tokens are not enforced 
Content-Type: text/plain; charset=utf-8

Description:

Ozone Datanode doesn't check the access mode parameter of the block token. Authenticated users with valid READ block token can do any write operation on the same block. 

This issue is being tracked as HDDS-4558,HDDS-4644

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

Apache Ozone would like to thank Marton Elek for reporting this issue.

