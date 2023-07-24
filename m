X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/24/4
Message-ID: <29582adc-1944-9191-ec59-3d1ee26d3cad@apache.org>
Date: Mon, 24 Jul 2023 18:06:06 +0000
From: Brian Demers <bdemers@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-34478: Apache Shiro before 1.12.0, or 2.0.0-alpha-3, may be susceptible to a path traversal attack when used together with APIs or other web frameworks that route requests based on non-normalized requests. 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Shiro before 1.12.0
- Apache Shiro before 2.0.0-alpha-3

Description:

Apache Shiro, before 1.12.0 or 2.0.0-alpha-3, may be susceptible to a path traversal attack that results in an authentication bypass when used together with APIs or other web frameworks that route requests based on non-normalized requests.

Mitigation: Update to Apache Shiro 1.12.0+ or 2.0.0-alpha-3+

Credit:

tkswifty (finder)
Ha1c9on (finder)

References:

https://lists.apache.org/thread/mbv26onkgw9o35rldh7vmq11wpv2t2qk
https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-34478

