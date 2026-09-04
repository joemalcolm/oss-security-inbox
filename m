X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/04/1
Message-ID: <f0cbd8c3-2f6e-5e98-a5df-79fe15034ced@apache.org>
Date: Fri, 04 Sep 2026 00:02:48 +0000
From: Kai Wan <wankai@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-71216: Apache SkyWalking: PagerDuty alarm hook transmits the integration routing key over cleartext HTTP 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache SkyWalking 9.6.0 through 11.0.0

Description:

PagerDuty alarm hook transmits the integration routing key over cleartext HTTP.



PagerDuty serves this endpoint over HTTPS and will
normally answer plain HTTP with a redirect. That does not remove the exposure.
The initial POST -- including the JSON body containing the routing key -- is
written to the socket unencrypted before any redirect response is received.
Redirection affects only whether the request is retried securely, not whether
the first copy left the host in the clear.



This issue affects Apache SkyWalking: from 9.6.0 through 11.0.0.



Users are recommended to upgrade to version 11.0.0, which fixes the issue.

Credit:

ambesh.infosec@...il.com (reporter)

References:

https://skywalking.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-71216

