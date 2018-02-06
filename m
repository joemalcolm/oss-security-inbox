X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/02/06/1
Message-ID: <ecde8662-12c8-e921-f169-e7bd64967e31@apache.org>
Date: Tue, 6 Feb 2018 12:55:10 -0500
From: Dave Brondsema <brondsem@...che.org>
To: dev@...ura.apache.org, users@...ura.apache.org, announce@...che.org, oss-security@...ts.openwall.com, security@...che.org
Subject: [SECURITY] CVE-2018-1299 Apache Allura directory traversal vulnerability
Content-Type: text/plain; charset=utf-8

CVE-2018-1299 Apache Allura directory traversal vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Apache Allura 1.7.0 and earlier

Description:
Unauthenticated attackers may retrieve arbitrary files through the Allura web
application.  Some webservers used with Allura, such as Nginx, Apache/mod_wsgi
or paster may prevent the attack from succeeding.  Others, such as gunicorn do
not prevent it and leave Allura vulnerable.

Mitigation:
Users of vulnerable webservers with Allura should upgrade to Allura 1.8.0
immediately.

Credit:
This issue was discovered by Everardo Padilla Saca
