X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/19/5
Message-ID: <6114c6b2-91b8-3040-e765-c56edcb2be02@apache.org>
Date: Thu, 18 Nov 2021 23:06:29 +0000
From: Siddharth Wagle <swagle@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-39234: Apache Ozone: Raw block data can be read bypassing ACL/authorization 
Content-Type: text/plain; charset=utf-8

Description:

Authenticated users knowing the ID of an existing block can craft specific request allowing access those blocks, bypassing other security checks like ACL. 

This issue is being tracked as HDDS-5061

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

Apache Ozone would like to thank Marton Elek for reporting this issue.

