X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/05/02/3
Message-ID: <a998fd0a-c755-4500-7d53-718132abf24e@apache.org>
Date: Sat, 2 May 2020 14:32:34 +0200
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-1961] Apache Syncope: Server-Side Template Injection on mail templates
Content-Type: text/plain; charset=utf-8

Description:
Vulnerability to Server-Side Template Injection on Mail templates enabling attackers to inject arbitrary JEXL expressions, leading to Remote
Code Execution (RCE) was discovered.

Severity: Important

Vendor: The Apache Software Foundation

Affects:
2.0.X releases prior to 2.0.15
2.1.X releases prior to 2.1.6

Solution:
2.0.X users: upgrade to 2.0.15
2.1.X users: upgrade to 2.1.6

Credit:
This issue was discovered by GitHub Security Labs team member Alvaro Muñoz - https://github.com/pwntester.

References:
https://syncope.apache.org/security



