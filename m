X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/06/23/1
Message-ID: <15158782-a2b5-d6a4-2d27-7bb1774af5db@apache.org>
Date: Thu, 23 Jun 2022 11:23:39 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-34305: Apache Tomcat: XSS in examples web application
Content-Type: text/plain; charset=utf-8

Severity: low

Description:

In Apache Tomcat 10.1.0-M1 to 10.1.0-M16, 10.0.0-M1 to 10.0.22, 9.0.30 
to 9.0.64 and 8.5.50 to 8.5.81 the Form authentication example in the 
examples web application displayed user provided data without filtering, 
exposing a XSS vulnerability.

References:

https://lists.apache.org/thread/k04zk0nq6w57m72w5gb0r6z9ryhmvr4k
