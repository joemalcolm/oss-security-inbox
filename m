X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/12/16/2
Message-ID: <a8f37ed8-030b-5330-d68e-8942292ca16c@apache.org>
Date: Fri, 16 Dec 2022 12:54:19 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-46870: Apache Zeppelin: Stored XSS in note permissions 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

An Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting') vulnerability in Apache Zeppelin allows logged-in users to execute arbitrary javascript in other users' browsers.
This issue affects Apache Zeppelin before 0.8.2. Users are recommended to upgrade to a supported version of Zeppelin.

This issue is being tracked as ZEPPELIN-4333 

References:

https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-46870
https://issues.apache.org/jira/browse/ZEPPELIN-4333

