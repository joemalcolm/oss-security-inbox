X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/07/2
Message-ID: <089093c8-9749-efd1-71ad-aa96757010c0@apache.org>
Date: Tue, 07 Mar 2023 12:55:32 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-27522: Apache HTTP Server: mod_proxy_uwsgi HTTP response splitting 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

HTTP Response Smuggling vulnerability in Apache HTTP Server via mod_proxy_uwsgi. This issue affects Apache HTTP Server: from 2.4.30 through 2.4.55.

Special characters in the origin response header can truncate/split the response forwarded to the client.

Credit:

Dimas Fariski Setyawan Putra (nyxsorcerer) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-27522

Timeline:

2023-01-29: Reported to security team

