X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/29/3
Message-ID: <d348c185-d395-6ed1-1310-0dc7e856c765@apache.org>
Date: Wed, 29 Jul 2026 04:00:05 +0000
From: Akira Ajisaka <aajisaka@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-23904: Apache Kyuubi: Unrestricted access via Kyuubi engine-ui proxy 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Kyuubi (org.apache.kyuubi:kyuubi-server) 1.8.0 before 1.12.0

Description:

Kyuubi Engine UI proxy accepts a host and port from the request path and proxies HTTP requests to that destination. A remote requester with network access to the proxy can cause the Kyuubi server to send HTTP requests to arbitrary reachable hosts, resulting in SSRF or open-proxy behavior.


This issue affects Apache Kyuubi: from 1.8.0 before 1.12.0.

Users are recommended to upgrade to version 1.12.0, which disables the proxy by default. To restore proxied Engine UI, set kyuubi.frontend.rest.engine.ui.proxy.enabled=true and configure allowed target hosts with kyuubi.frontend.rest.engine.ui.proxy.hosts.

Credit:

Ícaro Torres (reporter)

References:

https://github.com/apache/kyuubi/pull/7483
https://kyuubi.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-23904

