X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/13/6
Message-ID: <fd2c46a3-3cc2-7b1a-741e-1e44a7458b8e@apache.org>
Date: Thu, 13 Aug 2026 08:56:11 +0000
From: Oleg Kalnichevski <olegk@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-71290: Apache HttpComponents Client: TLS hostname verification silently disabled on the async transport (default config, MITM) 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache HttpComponents Client (org.apache.httpcomponents.client5:httpclient5) 5.4-alpha through 5.6.3

Description:

Improper TLS hostname verification vulnerability in Apache HttpComponents Client 5.4 or newer. HostnameVerificationPolicy#BUILTIN setting has no effect when used with the async version of HttpClient. An attacker that can intercept and modify traffic between the client and the server can impersonate the server by presenting a valid certificate for a different domain. 


Please note the classic version of HttpClient is not affected by this vulnerability. 

Affected users are recommended to upgrade to at least version 5.6.4, which fixes the issue.

Credit:

n0mi1k (finder)

References:

https://lists.apache.org/thread/bhf7g2zwpom2ohvwjjjlonc93br2s8vq
https://hc.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-71290

