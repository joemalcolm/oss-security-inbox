X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/02/03/3
Message-ID: <804b39e8-5b2c-9642-d80d-bd48d5104768@apache.org>
Date: Thu, 03 Feb 2022 18:21:00 +0000
From: Abhishek Tiwari <abti@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-36151: Apache Gobblin: Local Credentials Disclosure Vulnerability 
Content-Type: text/plain; charset=utf-8

Description:

In Apache Gobblin, the Hadoop token is written to a temp file that is visible to all local users on Unix-like systems. This affects versions <= 0.15.0. Users should update to version 0.16.0 which addresses this issue. 

Credit:

Apache Gobblin would like to thank Jonathan Leitschuh for reporting this issue. 

