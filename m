X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/07/25/10
Message-ID: <590db97f-212d-6dbe-c02f-c9064330f9fb@apache.org>
Date: Tue, 25 Jul 2023 15:02:59 +0000
From: Carsten Ziegeler <cziegeler@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-38435: Apache Felix Healthcheck Webconsole Plugin: XSS in healthcheck webconsole plugin 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Felix Healthcheck Webconsole Plugin through 2.0.2

Description:

An improper neutralization of input during web page generation ('Cross-site Scripting') [CWE-79] vulnerability in Apache Felix Healthcheck Webconsole Plugin version 2.0.2 and prior may allow an attacker to perform a reflected cross-site scripting (XSS) attack.

Upgrade to Apache Felix Healthcheck Webconsole Plugin 2.1.0 or higher.

Credit:

 This vulnerability was found by xray web vulnerability scanner (github.com/chaitin/xray) (finder)

References:

https://felix.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-38435

