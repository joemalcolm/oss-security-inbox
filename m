X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/11/19/3
Message-ID: <f8bd21d5-0fd8-d02d-f4c9-b54deff5a097@apache.org>
Date: Thu, 18 Nov 2021 23:04:45 +0000
From: Siddharth Wagle <swagle@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-39232: Apache Ozone: Missing admin check for SCM related admin commands 
Content-Type: text/plain; charset=utf-8

Description:

Certain admin related SCM commands can be executed by any authenticated users, not just by admins. 

This issue is being tracked as HDDS-4530

Mitigation:

Upgrade to Apache Ozone release version 1.2.0

Credit:

    Apache Ozone would like to thank Wei-Chiu Chuang for reporting this issue.

