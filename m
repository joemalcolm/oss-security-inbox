X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/03/24/3
Message-ID: <438578f3-f595-87bd-c22f-508b92d872a1@apache.org>
Date: Thu, 25 Mar 2021 06:08:53 +1300
From: Sidney Markowitz <sidney@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-1946: Apache SpamAssassin has an OS Command Injection vulnerability
Content-Type: text/plain; charset=utf-8

Description:

In Apache SpamAssassin before 3.4.5, malicious rule configuration (.cf) files can be configured to run system commands without any output or errors. With this, exploits can be injected in a number of scenarios.  In addition to upgrading to SA version 3.4.5, users should only use update channels or 3rd party .cf files from trusted places.

This issue is being tracked as https://bz.apache.org/SpamAssassin/show_bug.cgi?id=7793

Credit:

Apache SpamAssassin would like to thank Damian Lukowski at credativ for ethically reporting this issue.

References:

https://s.apache.org/3r1wh
