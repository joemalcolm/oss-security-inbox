X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/07/07/3
Message-ID: <95de08a1-56d1-3c44-509a-759d20823a41@apache.org>
Date: Thu, 07 Jul 2022 16:15:17 +0000
From: Abhishek Agarwal <abhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-28889: Apache Druid: Clickjacking in the web console 
Content-Type: text/plain; charset=utf-8

Description:

In Apache Druid 0.22.1 and earlier, the server did not set appropriate headers to prevent clickjacking. Druid 0.23.0 and later prevent clickjacking using the Content-Security-Policy header.

Mitigation:

Upgrade to Druid 0.23.0 or later.

