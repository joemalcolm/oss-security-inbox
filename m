X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/13/2
Message-ID: <9482066e-e26a-0b42-02f7-9aa9142a02f5@apache.org>
Date: Tue, 13 Oct 2026 12:05:06 +0000
From: Shuxin Pan <psxjoy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-107460: Apache Fesod (Incubating): UrlImageConverter SSRF protection bypass via DNS rebinding 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Fesod (Incubating) 2.0.2-incubating

Description:

Server-Side Request Forgery (SSRF) protection in the UrlImageConverter component of Apache Fesod (Incubating) fesod-sheet 2.0.2-incubating can be bypassed through DNS rebinding. When an application accepts an attacker-controlled image URL for spreadsheet writing, the converter checks the hostname's resolved IP addresses and then opens a separate connection that can resolve the hostname again. An attacker who controls DNS responses for the URL hostname may cause the connection to reach a restricted address after validation. CVE-2026-49328 covers SSRF in releases before 2.0.2-incubating; this issue is a DNS rebinding bypass of the protection in 2.0.2-incubating. Apache Fesod (Incubating) 2.1.0-incubating addresses the reported default-fetch scenario by disabling remote URL image fetching by default and requiring an explicit exact-host allowlist when the feature is enabled. Users should upgrade to 2.1.0-incubating. Applications enabling remote URL image fetching should allowlist only hostnames whose DNS and HTTP services are trusted.

Credit:

Venkatraman Kumar (reporter)
Wenhao Zeng (reporter)
Wanxin Yin (reporter)
George Chen (reporter)
Zeka Irving (Thresh) (reporter)

References:

https://github.com/apache/fesod/pull/1035
https://github.com/apache/fesod/releases/tag/2.1.0-incubating
https://cve.org/CVERecord?id=CVE-2026-49328
https://fesod.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-107460

